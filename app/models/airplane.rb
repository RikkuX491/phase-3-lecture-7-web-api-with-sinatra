class Airplane < ActiveRecord::Base
    has_many :flight_bookings
    has_many :passengers, through: :flight_bookings
end