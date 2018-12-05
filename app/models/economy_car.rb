class EconomyCar < PassengerCar
  validates :quantity_top_seats, :quantity_lower_seats, :side_top_seats,
            :side_lower_seats, presence: true
end