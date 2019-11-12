class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :coordinates
      t.string :terrain
      t.string :tree_growth
    end
  end
end
