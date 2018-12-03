class CreatePassengerCars < ActiveRecord::Migration
  def change
    create_table :passenger_cars do |t|
      t.string :car_type
      t.integer :quantity_top_seats
      t.integer :quantity_lower_seats
      t.timestamps null: false
    end
  end
end
