class TrainsController < ApplicationController
  attr_reader :current_station
  before_action :set_train, only: [:show]
  # GET /trains
  # GET /trains.json

  def index

    if params[:q] || params[:p]
      trains = SearchTrains.new(params).trains
    else
      trains = Train.all
    end

    @trains = trains
  end

  # GET /trains/1
  # GET /trains/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_train
    @train = Train.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def train_params
    params.require(:train).permit(:number, :current_station_id,
                                  :passenger_car_id, :current_route_id, :tickets_id)
  end
end
