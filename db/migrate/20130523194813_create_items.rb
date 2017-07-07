class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.text :product_model_number
      t.string :vendor_part_number
      t.string :vendor_name
      t.integer :quantity
      t.decimal :unit_value
      t.decimal :value
      t.string :picture
      t.text :vendor_url
      t.text :category
      t.string :location

      t.timestamps
    end
  end
end
