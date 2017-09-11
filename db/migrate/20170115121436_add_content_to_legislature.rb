class AddContentToLegislature < ActiveRecord::Migration[5.0]
  def change
    add_column :legislatures, :content, :text
  end
end
