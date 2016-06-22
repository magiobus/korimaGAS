class AddDefaultToCountInStations < ActiveRecord::Migration
  def up
    change_column :stations, :count, :integer, default: 0
  end

  def down
    change_column :stations, :count, :integer
  end
end
