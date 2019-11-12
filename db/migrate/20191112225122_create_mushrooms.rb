class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :name
      t.string :habitat
      t.boolean :edible?
      t.boolean :poisonous?
      t.integer :days_after_rain_til_growth
    end
  end
end
