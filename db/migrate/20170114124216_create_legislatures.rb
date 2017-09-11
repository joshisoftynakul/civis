class CreateLegislatures < ActiveRecord::Migration[5.0]
  def change
    create_table :legislatures do |t|
      t.string :title

      t.timestamps
    end
  end
end
