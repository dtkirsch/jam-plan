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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130711004409) do

  create_table "jams", :force => true do |t|
    t.string   "name"
    t.time     "start"
    t.time     "end"
    t.time     "set"
    t.integer  "venue_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.date     "date"
    t.text     "description"
    t.integer  "max_attendees"
  end

  add_index "jams", ["user_id"], :name => "index_jams_on_user_id"
  add_index "jams", ["venue_id"], :name => "index_jams_on_venue_id"

  create_table "jams_songs", :force => true do |t|
    t.integer "jam_id"
    t.integer "song_id"
  end

  add_index "jams_songs", ["jam_id"], :name => "index_jams_songs_on_jam_id"
  add_index "jams_songs", ["song_id"], :name => "index_jams_songs_on_song_id"

  create_table "jams_users", :force => true do |t|
    t.integer "jam_id"
    t.integer "user_id"
  end

  add_index "jams_users", ["jam_id", "user_id"], :name => "index_jams_users_on_jam_id_and_user_id", :unique => true
  add_index "jams_users", ["jam_id"], :name => "index_jams_users_on_jam_id"
  add_index "jams_users", ["user_id"], :name => "index_jams_users_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.string   "trebleC"
    t.string   "bassC"
    t.string   "trebleBb"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "instrument"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "map_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
