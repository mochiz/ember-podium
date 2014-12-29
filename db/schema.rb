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

ActiveRecord::Schema.define(version: 20141229130047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.string   "image"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "url"
  end

  create_table "results", force: :cascade do |t|
    t.integer "race_id"
    t.integer "rider_id"
    t.string  "position"
  end

  add_index "results", ["race_id"], name: "index_results_on_race_id", using: :btree
  add_index "results", ["rider_id"], name: "index_results_on_rider_id", using: :btree

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "team"
    t.string "twitter"
  end

  add_foreign_key "results", "races"
  add_foreign_key "results", "riders"
end
