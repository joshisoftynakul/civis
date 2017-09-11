class AddUnconfirmedEmailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :uncomfirmed_email, :string
  end
end
