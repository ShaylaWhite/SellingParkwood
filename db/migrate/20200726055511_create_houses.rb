class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :cost
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
