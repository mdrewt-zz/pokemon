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

ActiveRecord::Schema.define(version: 2019_05_30_221858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.integer "accuracy"
    t.integer "type_id"
    t.string "attack"
    t.string "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon", force: :cascade do |t|
    t.string "nickname"
    t.integer "level"
    t.integer "exp"
    t.integer "curent_damage"
    t.integer "iv_hp"
    t.integer "iv_speed"
    t.integer "iv_attack"
    t.integer "iv_sp_attack"
    t.integer "iv_defense"
    t.integer "iv_sp_defense"
    t.integer "user_id"
    t.integer "species_id"
    t.integer "move_1_id"
    t.integer "move_2_id"
    t.integer "move_3_id"
    t.integer "move_4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["species_id"], name: "index_pokemon_on_species_id"
    t.index ["user_id"], name: "index_pokemon_on_user_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "sprite_sheet_url"
    t.jsonb "sprite_sheet_data"
    t.integer "base_hp"
    t.integer "base_speed"
    t.integer "base_attack"
    t.integer "base_sp_attack"
    t.integer "base_defense"
    t.string "base_sp_defense"
    t.integer "primary_type_id"
    t.integer "secondary_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["primary_type_id"], name: "index_species_on_primary_type_id"
    t.index ["secondary_type_id"], name: "index_species_on_secondary_type_id"
  end

  create_table "type_effects", force: :cascade do |t|
    t.float "multiplier"
    t.integer "move_type_id"
    t.integer "target_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_type_id"], name: "index_type_effects_on_move_type_id"
    t.index ["target_type_id"], name: "index_type_effects_on_target_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
