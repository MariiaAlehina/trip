# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181206204519) do

  create_table "passenger_cars", force: :cascade do |t|
    t.string   "car_type"
    t.integer  "quantity_top_seats"
    t.integer  "quantity_lower_seats"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "train_id"
    t.integer  "car_number"
    t.integer  "side_top_seats"
    t.integer  "side_lower_seats"
    t.integer  "sitting_places"
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer  "railway_station_id"
    t.integer  "route_id"
    t.integer  "position"
    t.datetime "time_arrive"
    t.datetime "departure_time"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "ticket_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "current_train_id"
    t.integer  "current_user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "current_station_id"
    t.integer  "current_route_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
