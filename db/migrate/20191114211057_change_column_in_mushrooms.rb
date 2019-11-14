class ChangeColumnInMushrooms < ActiveRecord::Migration[5.2]
  def change
    change_column :mushrooms, :poisonous?, :string
  end
end
