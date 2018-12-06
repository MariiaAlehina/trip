class SearchesController < ApplicationController
  def show
    @railway_station = RailwayStation.all
    @first_station = RailwayStation.find(params[:first_station])
    @last_station = RailwayStation.find(params[:last_station])
    @routes = Route.search_routes(@first_station, @last_station)
  end
end

