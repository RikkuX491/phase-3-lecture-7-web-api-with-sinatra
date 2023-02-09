class Passenger < ActiveRecord::Base
    has_many :flight_bookings
    has_many :airplanes, through: :flight_bookings
end