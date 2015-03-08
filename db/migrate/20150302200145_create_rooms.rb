class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.references :hotel, index: true

      t.timestamps null: false
    end
    add_foreign_key :rooms, :hotels
  end
end
