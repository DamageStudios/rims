class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.change :product_model_number, :string
    end
  end
  def self.down
    change_table :items do |t|
      t.change :product_model_number, :text
    end
  end
end