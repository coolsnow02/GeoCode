class AddGmapsToParkingLot < ActiveRecord::Migration
  def change
    add_column :parking_lots, :gmaps, :boolean
  end
end
