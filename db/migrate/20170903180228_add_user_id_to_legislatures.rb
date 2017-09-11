class AddUserIdToLegislatures < ActiveRecord::Migration[5.0]
  def change
    add_column :legislatures, :user_id, :integer
    add_index :legislatures, :user_id
  end
end
