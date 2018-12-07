class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route, class_name: 'Route', foreign_key: :current_route_id
  has_many :tickets
  has_many :passenger_cars
end
