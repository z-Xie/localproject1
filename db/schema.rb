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

ActiveRecord::Schema.define(version: 20150216234644) do

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "Project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "Story_id"
  end

  add_index "developers", ["Project_id"], name: "index_developers_on_Project_id"
  add_index "developers", ["Story_id"], name: "index_developers_on_Story_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "developer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "static_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "point_value"
    t.string   "Stage"
    t.string   "Developer"
    t.integer  "Project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "Developer_id"
  end

  add_index "stories", ["Developer_id"], name: "index_stories_on_Developer_id"

end
