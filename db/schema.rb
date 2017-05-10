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

ActiveRecord::Schema.define(version: 20170510195248) do

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
    t.decimal  "SAbsences"
    t.decimal  "SAttendance"
    t.decimal  "STardies"
    t.integer  "SDetentions"
    t.decimal  "SUGPA"
    t.decimal  "SWGPA"
    t.decimal  "SSLHs"
    t.integer  "SCredits"
    t.boolean  "SOT"
    t.integer  "HID"
    t.integer  "SGrade"
    t.decimal  "SDebt"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "SClasses",                 array: true
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
