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

ActiveRecord::Schema.define(version: 20151003084016) do

  create_table "cap_ratios", force: :cascade do |t|
    t.string   "ticker"
    t.float    "cap_score1"
    t.float    "cap_score2"
    t.float    "cap_score3"
    t.float    "cap_score4"
    t.float    "cap_score5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cash_flows", force: :cascade do |t|
    t.string   "ticker"
    t.float    "cash_score1"
    t.float    "cash_score2"
    t.float    "cash_score3"
    t.float    "cash_score4"
    t.float    "cash_score5"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.string   "ticker"
    t.float    "roic_score1"
    t.float    "roic_score2"
    t.float    "roic_score3"
    t.float    "roic_score4"
    t.float    "roic_score5"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profit_margins", force: :cascade do |t|
    t.string   "ticker"
    t.float    "profit_score1"
    t.float    "profit_score2"
    t.float    "profit_score3"
    t.float    "profit_score4"
    t.float    "profit_score5"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "total_scores", force: :cascade do |t|
    t.string   "ticker"
    t.float    "total_score1"
    t.float    "total_score2"
    t.float    "total_score3"
    t.float    "total_score4"
    t.float    "total_score5"
    t.float    "average_score"
    t.integer  "rank1"
    t.integer  "rank2"
    t.integer  "rank3"
    t.integer  "rank4"
    t.integer  "rank5"
    t.integer  "average_rank"
    t.float    "pe_ratio"
    t.float    "price_per_book"
    t.float    "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
