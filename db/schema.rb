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

ActiveRecord::Schema.define(version: 20151114194604) do

  create_table "packages", force: :cascade do |t|
    t.decimal  "hours"
    t.string   "first_videographer"
    t.integer  "first_videographer_hours"
    t.string   "second_videographer"
    t.integer  "second_videographer_hours"
    t.integer  "highlight_video"
    t.integer  "documentary_edit"
    t.integer  "published_dvds"
    t.integer  "published_bds"
    t.decimal  "over_eight_hours"
    t.decimal  "over_ten_hours"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
    t.string   "address"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
