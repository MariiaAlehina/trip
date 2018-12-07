class SearchTrains
  attr_accessor :current_station

  def initialize(current_station)
    @current_station = params[:title]
  end

  def search
    Trains.find_by(self.current_station)
  end
end
