class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :topic
      t.string :headline

      t.timestamps null: false
    end
  end
end
