class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :trebleC
      t.string :bassC
      t.string :trebleBb

      t.timestamps
    end
  end
end
