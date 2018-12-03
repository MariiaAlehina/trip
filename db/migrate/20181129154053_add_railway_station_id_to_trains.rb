class AddRailwayStationIdToTrains < ActiveRecord::Migration
  def change
    add_belongs_to :trains, :railway_station
  end
end
