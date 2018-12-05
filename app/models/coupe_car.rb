class CoupeCar < PassengerCar
  validates :quantity_top_seats, :quantity_lower_seats, presence: true
end