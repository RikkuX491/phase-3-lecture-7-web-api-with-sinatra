puts "🌱 Seeding spices..."

# Seed your database here

Passenger.create(name: "Alice", age: 33, email: "alice@gmail.com", phone_number: "718-122-3456")
Passenger.create(name: "Bob", age: 36, email: "bob@yahoo.com", phone_number: "917-123-8748")
Passenger.create(name: "Chris", age: 55, email: "chris@aol.com", phone_number: "516-334-8684")

Airplane.create(airline: "Jetblue", number_of_seats: 34, image: "https://images.prismic.io/mparticle%2F1ac1175b-1ba1-4367-9cf0-ff83d83551c2_jetblue-mobile-app-data-hero.jpg")
Airplane.create(airline: "Delta", number_of_seats: 42, image: "https://www.travelandleisure.com/thmb/tSpgDaKlqqtnnxTiGnJBgRknwzQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/delta-plane-exterior-KNOWDELTA0621-39eb72ab62704acf9167adb2c08e62e9.jpg")

FlightBooking.create(origin: "New York", destination: "Canada", flight_duration: "2 hours", seat_number: 12, date_of_departure: "2023-02-22", date_of_arrival: "2023-02-23", airplane_id: 1, passenger_id: 1)
FlightBooking.create(origin: "New York", destination: "Bermuda", flight_duration: "2 hours", seat_number: 25, date_of_departure: "2023-03-11", date_of_arrival: "2023-03-11", airplane_id: 1, passenger_id: 2)
FlightBooking.create(origin: "New York", destination: "Mexico", flight_duration: "5 hours", seat_number: 39, date_of_departure: "2023-03-25", date_of_arrival: "2023-03-25", airplane_id: 2, passenger_id: 3)
FlightBooking.create(origin: "New York", destination: "Japan", flight_duration: "15 hours", seat_number: 33, date_of_departure: "2023-04-22", date_of_arrival: "2023-04-22", airplane_id: 2, passenger_id: 1)

puts "✅ Done seeding!"
