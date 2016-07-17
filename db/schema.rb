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

ActiveRecord::Schema.define(version: 20160717165917) do

  create_table "store_size", primary_key: "index", force: :cascade do |t|
    t.integer "store_number", limit: 4, null: false
    t.integer "square_feet",  limit: 4
  end

  add_index "store_size", ["index"], name: "index_UNIQUE", unique: true, using: :btree
  add_index "store_size", ["store_number"], name: "store_number_UNIQUE", unique: true, using: :btree

end
