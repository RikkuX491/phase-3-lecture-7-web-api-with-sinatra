# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_02_213452) do

  create_table "airplanes", force: :cascade do |t|
    t.string "airline"
    t.integer "number_of_seats"
    t.string "image"
  end

  create_table "flight_bookings", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.string "flight_duration"
    t.integer "seat_number"
    t.date "date_of_departure"
    t.date "date_of_arrival"
    t.integer "airplane_id"
    t.integer "passenger_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "phone_number"
  end

end
