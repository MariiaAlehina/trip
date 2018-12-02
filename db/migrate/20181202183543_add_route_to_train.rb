class AddRouteToTrain < ActiveRecord::Migration
    def change
      add_belongs_to :trains, :current_route
    end
end
