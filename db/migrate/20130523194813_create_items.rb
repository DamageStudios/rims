class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.text :product_model_number
      t.string :part_number
      t.string :vendor
      t.integer :quantity
      t.decimal :unit_value
      t.decimal :value
      t.string :picture
      t.string :picture_url
      t.text :url
      t.string :location

      t.timestamps
    end
  end
end
