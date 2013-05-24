class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :product_model_number
      t.string :vendor
      t.string :quantity
      t.integer :unit_value
      t.integer :value
      t.string :picture
      t.string :url
      t.string :location

      t.timestamps
    end
  end
end
