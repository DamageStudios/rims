class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    user ||= User.new # guest user (not logged in)
    # a signed-in user can do everything
    if user.has_role? :admin
     # an admin can do everything
      can :manage, :all
    elsif user.has_role? :editor
      # an editor can do everything but delete items
      can [:read, :create, :update], Items
    elsif user.has_role? :guest
      # a guest can only read items from database
      can :read, [Items]
    end
  end
end
