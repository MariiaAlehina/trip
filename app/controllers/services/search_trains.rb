class SearchTrains
  attr_accessor :station, :trains

  def initialize(params)
    @name_station = params[:q]
    search
  end

  private

  def search
    ids = Route.all.select {|x| x.first_station&.title == @name_station }.map(&:id)
    @trains = Train.all.map{|x| x if ids.include?(x.current_route_id)}.compact
  end
end
