class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.text :description
      t.string :specifications
      t.integer :price
      t.string :address
      t.string :condition
      t.integer :rating

      t.timestamps
    end
  end
end
