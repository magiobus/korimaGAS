class ChangeStatusFromStations < ActiveRecord::Migration
  def change
    remove_column :stations, :status
  end
end
