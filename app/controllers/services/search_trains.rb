class SearchTrains
  attr_accessor :station, :trains

  def initialize(params)
    @name_first_station = params[:q]
    @name_last_station = params[:p]
    search
  end

  private

  def search
    ids = Route.all.select {|x| x.first_station&.title == @name_first_station }.map(&:id)
    @trains = Train.all.map{|x| x if ids.include?(x.current_route_id)}.compact
    ids1 = Route.all.select {|x| x.last_station&.title == @name_last_station }.map(&:id)
    @trains = Train.all.map{|x| x if ids1.include?(x.current_route_id)}.compact
  end
end
