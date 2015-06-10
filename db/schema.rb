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

ActiveRecord::Schema.define(version: 20150606151900) do

  create_table "applications", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "email"
    t.integer  "mobile"
    t.string   "address_0"
    t.string   "city_0"
    t.string   "state_0"
    t.string   "zip_0"
    t.date     "address_date_from_0"
    t.date     "address_date_to_0"
    t.integer  "rent_0"
    t.string   "landlord_name_0"
    t.integer  "landlord_phone_0"
    t.string   "employer_name_0"
    t.string   "employer_role_0"
    t.integer  "employer_salary_0"
    t.string   "employer_address_0"
    t.string   "employer_city_0"
    t.string   "employer_state_0"
    t.string   "employer_zip_0"
    t.date     "employer_date_from_0"
    t.date     "employer_date_to_0"
    t.string   "employer_manager_0"
    t.integer  "employer_phone_0"
    t.integer  "pets_dogs"
    t.integer  "pets_cats"
    t.integer  "pets_other"
    t.text     "pets_explanation"
    t.boolean  "eviction"
    t.boolean  "bankruptcy"
    t.boolean  "crime"
    t.text     "explanation"
    t.text     "explanation_more"
    t.boolean  "credit_check_approval"
    t.boolean  "bg_check_approval"
    t.string   "signature"
    t.date     "signature_date"
    t.integer  "status"
    t.integer  "listing_id"
    t.integer  "renter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landlords", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "landlords", ["email"], name: "index_landlords_on_email", unique: true
  add_index "landlords", ["reset_password_token"], name: "index_landlords_on_reset_password_token", unique: true

  create_table "listings", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "bedrooms"
    t.float    "bathrooms"
    t.integer  "price"
    t.date     "date_available"
    t.integer  "term"
    t.string   "address"
    t.string   "unit"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "image_file1"
    t.string   "image_file2"
    t.string   "image_file3"
    t.string   "image_file4"
    t.string   "image_file5"
    t.string   "landlord_id"
    t.string   "contact_email"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renters", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "mobile"
    t.string   "profile_file1"
    t.string   "address_0"
    t.string   "city_0"
    t.string   "state_0"
    t.string   "zip_0"
    t.date     "address_date_from_0"
    t.date     "address_date_to_0"
    t.integer  "rent_0"
    t.string   "landlord_name_0"
    t.integer  "landlord_phone_0"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "renters", ["email"], name: "index_renters_on_email", unique: true
  add_index "renters", ["reset_password_token"], name: "index_renters_on_reset_password_token", unique: true

end
