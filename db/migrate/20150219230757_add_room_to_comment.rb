class AddRoomToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :room, index: true
    add_foreign_key :comments, :rooms
  end
end
