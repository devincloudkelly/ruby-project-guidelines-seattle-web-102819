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

ActiveRecord::Schema.define(version: 2019_11_13_170536) do

  create_table "forages", force: :cascade do |t|
    t.integer "mushroom_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity_harvested"
    t.integer "user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "coordinates"
    t.string "terrain"
  end

  create_table "mushrooms", force: :cascade do |t|
    t.string "name"
    t.string "habitat"
    t.boolean "edible?"
    t.boolean "poisonous?"
    t.integer "days_after_rain_til_growth"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

end
