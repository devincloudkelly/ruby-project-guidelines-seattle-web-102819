class AddColumnToForages < ActiveRecord::Migration[5.2]
  def change
    add_column :forages, :quantity_harvested, :integer
  end
end
