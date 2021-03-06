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

ActiveRecord::Schema.define(:version => 20130816030117) do

  create_table "children", :primary_key => "child_tc_id", :force => true do |t|
    t.string   "agent"
    t.string   "content"
    t.text     "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "parent_tc_id"
    t.string   "title"
  end

  create_table "defects", :force => true do |t|
    t.integer  "project_id"
    t.integer  "req_id"
    t.integer  "parent_tc_id"
    t.string   "def_description"
    t.string   "tester_name"
    t.string   "dev_name"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "category"
    t.string   "severity"
    t.string   "req_name"
  end

  create_table "defectseverities", :force => true do |t|
    t.string "severity"
  end

  create_table "defecttypes", :force => true do |t|
    t.string "category"
  end

  create_table "logins", :force => true do |t|
    t.string   "user"
    t.string   "password"
    t.text     "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.binary   "avatar"
  end

  create_table "posts", :primary_key => "parent_tc_id", :force => true do |t|
    t.integer  "project_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "agent",              :limit => 30
    t.string   "status",             :limit => 30
    t.string   "req_name"
    t.integer  "req_id"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.string   "audio_file_size"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.string   "audio_file_size"
  end

  create_table "requirements", :force => true do |t|
    t.integer  "project_id"
    t.integer  "parent_tc_id"
    t.string   "req_name"
    t.string   "req_description"
    t.string   "tester_assigned"
    t.string   "dev_assigned"
    t.string   "prod_owner"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string "name"
  end

end
