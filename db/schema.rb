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

ActiveRecord::Schema.define(version: 20140302001704) do

  create_table "shops", force: true do |t|
    t.string   "company"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "scf"
    t.string   "zip"
    t.string   "zip4"
    t.string   "mailscore"
    t.string   "sic1code"
    t.string   "sic1"
    t.string   "sic2code"
    t.string   "sic2"
    t.string   "sic3code"
    t.string   "sic3"
    t.string   "sic4code"
    t.string   "sic4"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
