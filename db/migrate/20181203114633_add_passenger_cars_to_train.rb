class AddPassengerCarsToTrain < ActiveRecord::Migration
  def change
    add_belongs_to :passenger_cars, :train
  end
end
