class SearchTickets
  attr_accessor :route_params

  def initialize()
  end

  def search
    Route.find_by(self.route_params)
  end
end