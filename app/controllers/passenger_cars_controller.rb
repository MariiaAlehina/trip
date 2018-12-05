class PassengerCarsController < ApplicationController
  before_action :set_train, only: [:new, :create]

  def new
    @train = Train.find(params[:train_id])
    @passenger_car = PassengerCar.new
  end

  def show
    @passenger_car = PassengerCar.find(params[:id])
  end

  def create
    @passenger_car = @train.passenger_cars.build(passenger_car_params)

    if @passenger_car.save
      redirect_to @train
    else
      render :new
    end
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def passenger_car_params
    params.require(:passenger_car).permit(:car_number, :quantity_top_seat,
                                           :quantity_lower_seats, :car_type)
  end
end
# :side_top_seats,
#     :side_lower_seats, :sitting_places,
