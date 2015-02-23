class AddSoundcloudToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :soundcloud, :string
  end
end
