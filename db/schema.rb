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

ActiveRecord::Schema.define(version: 20160415085926) do

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.string   "user"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "busphone"
    t.string   "cell"
    t.string   "website"
    t.string   "busID"
    t.string   "numTables"
    t.string   "numbrellas"
    t.string   "numChairs"
    t.string   "numTents"
    t.string   "resaleNum"
    t.string   "product"
    t.string   "taxID"
    t.string   "formtype"
    t.string   "permitNum"
    t.string   "DD214_file_name"
    t.string   "DD214_content_type"
    t.integer  "DD214_file_size"
    t.datetime "DD214_updated_at"
    t.string   "facility_op_form_file_name"
    t.string   "facility_op_form_content_type"
    t.integer  "facility_op_form_file_size"
    t.datetime "facility_op_form_updated_at"
    t.string   "kitchen_contract_file_name"
    t.string   "kitchen_contract_content_type"
    t.integer  "kitchen_contract_file_size"
    t.datetime "kitchen_contract_updated_at"
  end

end
