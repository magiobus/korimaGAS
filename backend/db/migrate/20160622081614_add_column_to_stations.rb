class AddColumnToStations < ActiveRecord::Migration
  def change
    add_column :stations, :gas, :boolean
    add_column :stations, :open, :boolean
  end
end
