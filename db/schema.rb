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

ActiveRecord::Schema.define(version: 20150420085547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lines", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "topic"
    t.text     "body"
    t.integer  "received_messageable_id"
    t.string   "received_messageable_type"
    t.integer  "sent_messageable_id"
    t.string   "sent_messageable_type"
    t.boolean  "opened",                     default: false
    t.boolean  "recipient_delete",           default: false
    t.boolean  "sender_delete",              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
    t.boolean  "recipient_permanent_delete", default: false
    t.boolean  "sender_permanent_delete",    default: false
  end

  add_index "messages", ["ancestry"], name: "index_messages_on_ancestry", using: :btree
  add_index "messages", ["sent_messageable_id", "received_messageable_id"], name: "acts_as_messageable_ids", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.integer  "model_year"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "specs", force: :cascade do |t|
    t.integer  "line_id"
    t.string   "engine_cc"
    t.string   "transmission"
    t.string   "shifts"
    t.string   "type"
    t.string   "horsepower"
    t.string   "torque"
    t.string   "accelaration"
    t.string   "drive_mode"
    t.string   "fuel_consumption"
    t.string   "fuel_tank"
    t.integer  "fuel_type"
    t.integer  "top_speed"
    t.integer  "number_of_airbags"
    t.boolean  "electronic_seats"
    t.boolean  "abs"
    t.boolean  "ebd"
    t.boolean  "esp"
    t.boolean  "front_fog_light"
    t.integer  "rims_size"
    t.boolean  "auto_bend_mirrors"
    t.boolean  "mirror_signal"
    t.string   "headlights_type"
    t.string   "taillights_type"
    t.boolean  "spoiler"
    t.boolean  "parking_sensors"
    t.string   "sound_system"
    t.boolean  "cd_player"
    t.integer  "aux"
    t.integer  "usb"
    t.boolean  "bluetooth"
    t.string   "electric_windows"
    t.boolean  "driver_seat_control"
    t.string   "leather_seats"
    t.boolean  "start_stop"
    t.boolean  "panoramic_roof"
    t.boolean  "rear_camera"
    t.string   "screen"
    t.boolean  "multifunction_steering_wheel"
    t.boolean  "cruise_control"
    t.boolean  "leather_steering_wheel"
    t.boolean  "leather_gear_shift"
    t.boolean  "front_wrist"
    t.boolean  "rear_wrist"
    t.boolean  "rain_sensor"
    t.boolean  "light_sensor"
    t.integer  "boot_size"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin",                  default: false, null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phone"
  end

  add_index "users", ["admin"], name: "index_users_on_admin", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
