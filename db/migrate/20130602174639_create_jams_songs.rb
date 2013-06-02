class CreateJamsSongs < ActiveRecord::Migration
  def change
    create_table :jams_songs do |t|
      t.references :jam
      t.references :song

#      t.timestamps
    end
    add_index :jams_songs, :jam_id
    add_index :jams_songs, :song_id
  end
end
