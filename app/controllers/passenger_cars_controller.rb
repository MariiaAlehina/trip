class PassengerCarsController < ApplicationController
  before_action :set_passenger_car, only: [:show, :edit, :update, :destroy]
  def index
    @passenger_cars = PassengerCar.all
  end

  def show
  end

  def new
    @passenger_car = PassengerCar.new
  end

  def create
    @passenger_car = PassengerCar.new(passenger_car_params)

    if @passenger_car.save
      redirect_to @passenger_car
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @passenger_car.update(passenger_car_params)
      redirect_to @passenger_car
    else
      render :edit
    end
  end

  def destroy
    @passenger_car.destroy
    redirect_to passenger_cars_path
  end

  private
  def set_passenger_car
    @passenger_car = PassengerCar.find(params[:id])
  end

  def passenger_car_params
    params.require(:passenger_car).permit(:car_type, :quantity_top_seats, :quantity_lower_seats, :car_number, :side_top_seats, :side_lower_seats, :sitting_places, :train_id)
  end
end