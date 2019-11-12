class CreateForages < ActiveRecord::Migration[5.2]
  def change
    create_table :forages do |t|
      t.integer :mushroom_id
      t.integer :location_id
      t.timestamps
    end
  end
end
