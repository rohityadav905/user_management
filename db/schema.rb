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

ActiveRecord::Schema.define(version: 20141010064625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: true do |t|
    t.integer  "user_id"
    t.boolean  "trash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "album_photo_file_name"
    t.string   "album_photo_content_type"
    t.integer  "album_photo_file_size"
    t.datetime "album_photo_updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "start_event"
    t.datetime "end_event"
    t.string   "event_description"
    t.string   "organizer_name"
    t.string   "organizer_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "event_logo_file_name"
    t.string   "event_logo_content_type"
    t.integer  "event_logo_file_size"
    t.datetime "event_logo_updated_at"
    t.integer  "user_id"
    t.integer  "eventtype_id"
    t.integer  "eventtopic_id"
    t.integer  "eventmsg_id"
  end

  create_table "eventtopics", force: true do |t|
    t.string   "event_topic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventtypes", force: true do |t|
    t.string   "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.boolean  "trash"
    t.string   "messages"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sendfile_file_name"
    t.string   "sendfile_content_type"
    t.integer  "sendfile_file_size"
    t.datetime "sendfile_updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "profile_photo_file_name"
    t.string   "profile_photo_content_type"
    t.integer  "profile_photo_file_size"
    t.datetime "profile_photo_updated_at"
    t.integer  "role_id"
    t.boolean  "trash"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
