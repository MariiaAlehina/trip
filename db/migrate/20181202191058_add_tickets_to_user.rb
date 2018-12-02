class AddTicketsToUser < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :current_user
  end
end
