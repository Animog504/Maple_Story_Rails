class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :player_count

      t.timestamps
    end
  end
end
