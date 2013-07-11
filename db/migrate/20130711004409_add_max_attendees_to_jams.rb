class AddMaxAttendeesToJams < ActiveRecord::Migration
  def change
    add_column :jams, :max_attendees, :integer
  end
end
