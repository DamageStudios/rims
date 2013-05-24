class Item < ActiveRecord::Base
  mount_uploader :picture, PictureUploader	
  attr_accessible :description, :location, :name, :picture, :product_model_number, :quantity, :unit_value, :url, :value, :vendor
end
