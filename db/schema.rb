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

ActiveRecord::Schema.define(version: 2022_07_08_015614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "otters", force: :cascade do |t|
    t.integer "otter_age"
    t.string "otter_name"
    t.boolean "able_to_work"
    t.bigint "park_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["park_id"], name: "index_otters_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "title"
    t.boolean "hiring_workers"
    t.string "number_of_workers"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "otters", "parks"
end
