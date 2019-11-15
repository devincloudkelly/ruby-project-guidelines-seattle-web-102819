class UpdateColumnPurposeInMushrooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :mushrooms, :poisonous?, :string
    add_column :mushrooms, :poison_level, :string
  end
end
