class SVCar < PassengerCar
  validates :quantity_lower_seats, presence: true
end