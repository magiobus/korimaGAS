class RemoveOpenFieldFromStations < ActiveRecord::Migration
  def change
    remove_column :stations, :open
  end
end
