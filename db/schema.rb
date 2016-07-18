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

ActiveRecord::Schema.define(version: 20160718153054) do

  create_table "bales", force: :cascade do |t|
    t.integer  "index",                      limit: 4
    t.datetime "bale_time_stamp"
    t.text     "tag_sn",                     limit: 65535
    t.integer  "bale_weight",                limit: 4
    t.integer  "bale_weight_scaled",         limit: 4
    t.integer  "tag_rf_reads",               limit: 4
    t.integer  "tag_max_rf_reads",           limit: 4
    t.float    "total_detection_confidence", limit: 24
    t.float    "tag_detection_confidence",   limit: 24
    t.float    "scale_detection_confidence", limit: 24
    t.text     "goby_sn",                    limit: 65535
  end

  create_table "store_sizes", force: :cascade do |t|
    t.integer "index",        limit: 4
    t.integer "store_number", limit: 4
    t.integer "square_feet",  limit: 4
  end

  create_table "stores", force: :cascade do |t|
    t.integer "index",            limit: 4
    t.integer "store_number",     limit: 4
    t.text    "district",         limit: 65535
    t.text    "store_id",         limit: 65535
    t.integer "total_weight",     limit: 4
    t.integer "num_bales",        limit: 4
    t.integer "mean_bale_weight", limit: 4
    t.integer "square_feet",      limit: 4
  end

end
