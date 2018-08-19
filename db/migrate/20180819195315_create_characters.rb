class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :occupation
      t.integer :level

      t.belongs_to :user

      t.timestamps
    end
  end
end
