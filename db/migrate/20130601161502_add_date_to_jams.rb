class AddDateToJams < ActiveRecord::Migration
  def change
    add_column :jams, :date, :date
  end
end
