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

ActiveRecord::Schema.define(version: 20141225210705) do

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "portfolio_images", force: true do |t|
    t.integer  "portfolio_item_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "portfolio_items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "date"
    t.string   "customer"
    t.string   "category"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "sqlite_sp_functions", id: false, force: true do |t|
    t.text "name"
    t.text "text"
  end

# Could not dump table "sqlite_stat1" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "sqlite_stat4" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "sqlite_vs_links_names", id: false, force: true do |t|
    t.text "name"
    t.text "alias"
  end

  create_table "sqlite_vs_properties", id: false, force: true do |t|
    t.text "parentType"
    t.text "parentName"
    t.text "propertyName"
    t.text "propertyValue"
  end

end
