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

ActiveRecord::Schema.define(version: 2018_10_01_185418) do

  create_table "aliens", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.boolean "therapy"
    t.integer "planet_id"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_aliens_on_owner_id"
    t.index ["planet_id"], name: "index_aliens_on_planet_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.boolean "therapy"
    t.integer "planet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_owners_on_planet_id"
  end

  create_table "personalities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personality_traits", force: :cascade do |t|
    t.integer "personality_id"
    t.integer "alien_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alien_id"], name: "index_personality_traits_on_alien_id"
    t.index ["personality_id"], name: "index_personality_traits_on_personality_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "climate"
    t.integer "gravity"
    t.string "diet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.integer "alien_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alien_id"], name: "index_toys_on_alien_id"
  end

end
