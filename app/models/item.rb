class Item < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :description, :location, :name, :picture, :product_model_number, :vendor_part_number, :quantity, :unit_value, :vendor_url, :value, :vendor_name, :category

self.per_page = 25

belongs_to :item
after_save :update_value
protected

  def update_value
   update_column :value, (quantity * unit_value)
  end
end
