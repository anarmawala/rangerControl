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

ActiveRecord::Schema.define(version: 20170512110653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "CID"
    t.string   "TID"
    t.string   "CType"
    t.string   "CName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homerooms", force: :cascade do |t|
    t.string   "HID"
    t.string   "TID"
    t.string   "HNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "HGrade"
  end

  create_table "students", force: :cascade do |t|
    t.string   "SName"
    t.string   "SID"
    t.string   "SAddress"
    t.string   "SPhone"
    t.string   "SEmail"
    t.string   "SAbsences"
    t.string   "SAttendance"
    t.string   "STardies"
    t.string   "SDetentions"
    t.string   "SUGPA"
    t.string   "SWGPA"
    t.string   "SSLHs"
    t.string   "SCredits"
    t.boolean  "SOT"
    t.string   "SClasses",    default: [],              array: true
    t.string   "HID"
    t.integer  "SGrade"
    t.string   "SDebt"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "SPhotoS"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "TID"
    t.string   "TEmail"
    t.boolean  "TAdmin"
    t.string   "TName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
