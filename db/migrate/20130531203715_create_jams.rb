class CreateJams < ActiveRecord::Migration
  def change
    create_table :jams do |t|
      t.string :name
      t.time :start
      t.time :end
      t.time :set
      t.references :venue
      t.references :user

      t.timestamps
    end
    add_index :jams, :venue_id
    add_index :jams, :user_id
  end
end
