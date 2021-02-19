class AddColumnsToMachines < ActiveRecord::Migration[6.0]
  def change
    add_column :machines, :category, :string, null: false
    add_column :machines, :capacity, :integer, default: 0, null: false
  end
end
