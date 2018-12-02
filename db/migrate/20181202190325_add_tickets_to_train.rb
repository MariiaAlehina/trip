class AddTicketsToTrain < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :current_train
  end
end
