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

ActiveRecord::Schema.define(version: 2019_02_11_104408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "energies", force: :cascade do |t|
    t.integer "label", null: false
    t.bigint "house_id", null: false
    t.integer "year", null: false
    t.integer "month", null: false
    t.decimal "temperature", null: false
    t.decimal "daylight", null: false
    t.integer "energy_production", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_energies_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "city", null: false
    t.integer "num_of_people", null: false
    t.boolean "has_child", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
