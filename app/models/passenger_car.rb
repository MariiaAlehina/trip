class PassengerCar < ActiveRecord::Base
  belongs_to :train, class_name: 'Train', foreign_key: :train_id

  validates :car_number, presence: true

  scope :economy, -> { where(car_type: 'EconomyCar') }
  scope :coupe, -> { where(car_type: 'CoupeCar') }
  scope :sv, -> { where(car_type: 'SVCar') }
  scope :sitting, -> { where(car_type: 'SittingCar') }
  # default_scope { order(:car_number) }
end
