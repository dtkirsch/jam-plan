class AddDescriptionToJams < ActiveRecord::Migration
  def change
    add_column :jams, :description, :text
  end
end
