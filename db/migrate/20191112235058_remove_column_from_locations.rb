class RemoveColumnFromLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :tree_growth, :string
  end
end
