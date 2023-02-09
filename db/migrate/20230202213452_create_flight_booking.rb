class CreateFlightBooking < ActiveRecord::Migration[6.1]
  def change
    create_table :flight_bookings do |t|
      t.string :origin
      t.string :destination
      t.string :flight_duration
      t.integer :seat_number
      t.date :date_of_departure
      t.date :date_of_arrival
      t.integer :airplane_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
