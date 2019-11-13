class AddColumnInForages < ActiveRecord::Migration[5.2]
  def change
    add_column :forages, :user_id, :integer
  end
end
