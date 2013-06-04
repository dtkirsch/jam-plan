class CreateJamsUsers < ActiveRecord::Migration
  def change
    create_table :jams_users do |t|
      t.references :jam
      t.references :user

#      t.timestamps
    end
    add_index :jams_users, :jam_id
    add_index :jams_users, :user_id
    add_index :jams_users, [:jam_id, :user_id], :unique => true, :null => false
  end
end
