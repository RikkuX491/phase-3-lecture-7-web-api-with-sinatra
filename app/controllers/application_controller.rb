class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/passengers" do
    passengers = Passenger.all
    passengers.to_json
  end

  get "/passengers/:id" do
    passenger = Passenger.find(params[:id])
    passenger.to_json(include: [:airplanes, :flight_bookings])
  end

  post "/passengers" do
    passenger = Passenger.create(name: params[:name], age: params[:age], email: params[:email], phone_number: params[:phone_number])
    passenger.to_json
  end

  get "/airplanes" do
    airplanes = Airplane.all
    airplanes.to_json
  end

  get "/airplanes/:id" do
    airplane = Airplane.find(params[:id])
    airplane.to_json(include: [:passengers, :flight_bookings])
  end

  post "/airplanes" do
    airplane = Airplane.create(airline: params[:airline], number_of_seats: params[:number_of_seats])
    airplane.to_json
  end

  get "/flight_bookings" do
    flight_bookings = FlightBooking.all
    flight_bookings.to_json
  end

  get "/flight_bookings/:id" do
    flight_booking = FlightBooking.find(params[:id])
    flight_booking.to_json(include: [:airplane, :passenger])
  end

  post "/flight_bookings" do
    flight_booking = FlightBooking.create(origin: params[:origin], destination: params[:destination], flight_duration: params[:flight_duration], seat_number: params[:seat_number], date_of_departure: params[:date_of_departure], date_of_arrival: params[:date_of_arrival], airplane_id: params[:airplane_id], passenger_id: params[:passenger_id])
    flight_booking.to_json
  end

  patch "/flight_bookings/:id" do
    flight_booking = FlightBooking.find(params[:id])
    flight_booking.update(origin: params[:origin], destination: params[:destination], flight_duration: params[:flight_duration], seat_number: params[:seat_number], date_of_departure: params[:date_of_departure], date_of_arrival: params[:date_of_arrival], airplane_id: params[:airplane_id], passenger_id: params[:passenger_id])
    flight_booking.to_json
  end

  delete "/flight_bookings/:id" do
    flight_booking = FlightBooking.find(params[:id])
    flight_booking.destroy
    flight_booking.to_json
  end

end
