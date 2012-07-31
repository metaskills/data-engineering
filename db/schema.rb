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

ActiveRecord::Schema.define(:version => 20120731180414) do

  create_table "items", :force => true do |t|
    t.string  "description",                               :null => false
    t.decimal "price",       :precision => 8, :scale => 2, :null => false
  end

  create_table "merchants", :force => true do |t|
    t.string "name",    :null => false
    t.string "address", :null => false
  end

  create_table "purchaser_items", :force => true do |t|
    t.integer "purchaser_id",                :null => false
    t.integer "item_id",                     :null => false
    t.integer "count",        :default => 1, :null => false
  end

  create_table "purchasers", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "uploads", :force => true do |t|
    t.boolean  "processed"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

end
