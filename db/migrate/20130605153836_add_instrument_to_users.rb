class AddInstrumentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :instrument, :string
  end
end
