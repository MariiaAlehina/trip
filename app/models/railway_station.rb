class RailwayStation < ActiveRecord::Base
  validates :title, presence: true
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.position,
        railway_stations_routes.time_arrive, railway_stations_routes.departure_time')
                           .joins(:railway_stations_routes)
                           .order("railway_stations_routes.position").uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def update_time(route, time_arrive, departure_time)
    station_route = station_route(route)
    station_route.update(time_arrive: time_arrive, departure_time: departure_time) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def time_arrive_in(route)
    station_route(route).try(:time_arrive)
  end

  def departure_time_in(route)
    station_route(route).try(:departure_time)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
