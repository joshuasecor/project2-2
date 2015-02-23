class AddRoomTextToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :room_text, :text
  end
end
