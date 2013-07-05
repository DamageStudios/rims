class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.text :product_model_number
      t.string :part_number
      t.string :vendor
      t.string :quantity
      t.decimal :unit_value, :precision => 10, :scale => 2, :default => 0.0
      t.decimal :value, :precision => 10, :scale => 2, :default => 0.0
      t.string :picture
      t.text :url
      t.string :location

      t.timestamps
    end
  end
end
