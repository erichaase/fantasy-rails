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

ActiveRecord::Schema.define(version: 20130921041447) do

  create_table "box_score_entries", force: true do |t|
    t.integer  "pid_espn"
    t.string   "fname"
    t.string   "lname"
    t.string   "status"
    t.integer  "min"
    t.integer  "fgm"
    t.integer  "fga"
    t.integer  "tpm"
    t.integer  "tpa"
    t.integer  "ftm"
    t.integer  "fta"
    t.integer  "oreb"
    t.integer  "reb"
    t.integer  "ast"
    t.integer  "stl"
    t.integer  "blk"
    t.integer  "to"
    t.integer  "pf"
    t.integer  "plus_minus"
    t.integer  "pts"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "box_score_id"
  end

  add_index "box_score_entries", ["box_score_id"], name: "index_box_score_entries_on_box_score_id", using: :btree
  add_index "box_score_entries", ["pid_espn"], name: "index_box_score_entries_on_pid_espn", using: :btree

  create_table "box_scores", force: true do |t|
    t.integer  "gid_espn"
    t.string   "status"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "box_scores", ["date"], name: "index_box_scores_on_date", using: :btree
  add_index "box_scores", ["gid_espn"], name: "index_box_scores_on_gid_espn", unique: true, using: :btree

end
