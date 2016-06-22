class AddMessageAndCountToStations < ActiveRecord::Migration
  def change
    add_column :stations, :message, :string, :limit => 140
    add_column :stations, :count, :integer
  end
end
