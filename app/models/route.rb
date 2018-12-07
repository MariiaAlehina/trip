class Route < ActiveRecord::Base
  validates :title, presence: true
  validate :stations_count

  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  before_validation :set_name

  scope :with_station, -> (station) { Route.joins(:railway_stations).where(
      'railway_stations.id = ?', station.id) }

  def self.search_routes(first_station, last_station)
    Route.with_station(first_station) &
    Route.with_station(last_station)
  end

  private

  def set_name
    self.title = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end

  def stations_count
      if railway_stations.size < 2
        errors.add(:base, "Route should contain at least 2 stations")
      end
  end
end