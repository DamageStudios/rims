class AddLocationToItem < ActiveRecord::Migration
  def change
    remove_column :items, :location
    add_reference :items, :location, index: true
    add_foreign_key :items, :locations


  end
end
