class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable,:authentication_keys => [:login]

  attr_accessor :login       
  attr_accessible :username, :name, :email, :password, :password_confirmation, 
                  :encrypted_password, :encrypted_password_confirmation, 
                  :reset_password_token, :reset_password_sent_at, :remember_created_at, 
                  :sign_in_count, :current_sign_in_at, :last_sign_in_at, 
                  :current_sign_in_ip, :last_sign_in_ip, :role

  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }

  def set_default_role
    self.role ||= :user
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
end
