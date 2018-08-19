class CreateCharacterParties < ActiveRecord::Migration[5.2]
  def change
    create_table :character_parties do |t|
      t.belongs_to :party, foreign_key: true
      t.belongs_to :character, foreign_key: true

      t.timestamps
    end
  end
end
