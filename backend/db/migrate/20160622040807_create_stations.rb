class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :street
      t.string :lat
      t.string :lng
      t.string :phone
      t.string :status

      t.timestamps null: false
    end
  end
end
