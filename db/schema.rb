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

ActiveRecord::Schema.define(version: 0) do

  create_table "animals", primary_key: "animal_id", force: :cascade do |t|
    t.integer "user_id",             limit: 4
    t.integer "shelter_id",          limit: 4
    t.integer "species_id",          limit: 4
    t.integer "breed_id",            limit: 4
    t.string  "behavioral_trait_id", limit: 255
    t.string  "health_trait_id",     limit: 255
    t.string  "vaccination_id",      limit: 255
    t.string  "animal_name",         limit: 255
  end

  add_index "animals", ["shelter_id"], name: "shelter_id", using: :btree
  add_index "animals", ["user_id"], name: "user_id", using: :btree

  create_table "breed", primary_key: " breed_id", force: :cascade do |t|
    t.string "breed_name", limit: 20
  end

  create_table "shelters", primary_key: "shelter_id", force: :cascade do |t|
    t.string  "shelter_instagram_link", limit: 255
    t.string  "shelter_facebook_link",  limit: 255
    t.string  "shelter_twitter_link",   limit: 255
    t.string  "shelter_street_address", limit: 255
    t.string  "shelter_city",           limit: 255
    t.string  "shelter_state",          limit: 255
    t.string  "shelter_country",        limit: 255
    t.string  "shelter_postal_code",    limit: 20
    t.decimal "shelter_latitude",                   precision: 18, scale: 8
    t.decimal "shelter_longitude",                  precision: 18, scale: 8
    t.string  "shelter_name",           limit: 45
  end

  create_table "species", primary_key: "species_id", force: :cascade do |t|
    t.string "species_name", limit: 20
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string  "user_role",        limit: 7
    t.integer "user_cell_phone",  limit: 4
    t.string  "user_eligibility", limit: 15
    t.string  "user_first_name",  limit: 45
    t.string  "user_last_name",   limit: 45
  end

  create_table "vaccinations", primary_key: "vaccination_id", force: :cascade do |t|
    t.string "vaccination_name", limit: 20
  end

  add_foreign_key "animals", "shelters", primary_key: "shelter_id", name: "animals_ibfk_2"
  add_foreign_key "animals", "users", primary_key: "user_id", name: "animals_ibfk_1"
end
