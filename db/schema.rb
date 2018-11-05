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

ActiveRecord::Schema.define(version: 20181105211231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "institution_id"
    t.integer  "category_id"
    t.date     "start_time"
    t.date     "end_time"
    t.string   "profile_pic"
    t.integer  "capacity"
    t.boolean  "programe_calendar"
    t.boolean  "required_acceptance"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["category_id"], name: "index_activities_on_category_id", using: :btree
    t.index ["institution_id"], name: "index_activities_on_institution_id", using: :btree
  end

  create_table "activity_places", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["activity_id"], name: "index_activity_places_on_activity_id", using: :btree
    t.index ["place_id"], name: "index_activity_places_on_place_id", using: :btree
  end

  create_table "activity_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blood_types", force: :cascade do |t|
    t.string   "group"
    t.string   "rh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.decimal  "altitude"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "flag"
    t.string   "shape"
    t.integer  "department_id"
    t.string   "code"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_cities_on_department_id", using: :btree
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.decimal  "code"
    t.decimal  "area"
    t.string   "shape"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "district_areas", force: :cascade do |t|
    t.string   "name"
    t.integer  "initialZipCode"
    t.integer  "lastZipCode"
    t.decimal  "surfaceArea"
    t.decimal  "population"
    t.decimal  "density"
    t.string   "shape"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "city_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["city_id"], name: "index_district_areas_on_city_id", using: :btree
  end

  create_table "document_types", force: :cascade do |t|
    t.string   "longname"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "education_levels", force: :cascade do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institution_by_cathegories", force: :cascade do |t|
    t.integer  "institution_id"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["category_id"], name: "index_institution_by_cathegories_on_category_id", using: :btree
    t.index ["institution_id"], name: "index_institution_by_cathegories_on_institution_id", using: :btree
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.string   "nit"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "facebook_id"
    t.string   "youtube_channel"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "description"
    t.boolean  "is_public"
    t.string   "logo"
    t.string   "type_education"
    t.string   "attention"
    t.string   "schedule"
    t.string   "Language"
    t.integer  "like"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "interest_by_cathegories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_interest_by_cathegories_on_category_id", using: :btree
    t.index ["user_id"], name: "index_interest_by_cathegories_on_user_id", using: :btree
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.integer  "upz_id"
    t.string   "shape"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "district_area_id"
    t.string   "code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["district_area_id"], name: "index_neighborhoods_on_district_area_id", using: :btree
    t.index ["upz_id"], name: "index_neighborhoods_on_upz_id", using: :btree
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.integer  "neighborhood_id"
    t.string   "pictureMedium"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "like"
    t.integer  "not_like"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["neighborhood_id"], name: "index_places_on_neighborhood_id", using: :btree
  end

  create_table "upzs", force: :cascade do |t|
    t.string   "name"
    t.integer  "district_area_id"
    t.string   "shape"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["district_area_id"], name: "index_upzs_on_district_area_id", using: :btree
  end

  create_table "user_activities", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "user_id"
    t.boolean  "acceptance"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["activity_id"], name: "index_user_activities_on_activity_id", using: :btree
    t.index ["user_id"], name: "index_user_activities_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "document_type_id"
    t.string   "documentNumber"
    t.string   "name"
    t.string   "lastname"
    t.string   "gender"
    t.date     "birthday"
    t.integer  "blood_type_id"
    t.integer  "neighborhood_id"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "cellphone"
    t.integer  "education_level_id"
    t.string   "pictureMedium"
    t.string   "pictureThumbnail"
    t.string   "password"
    t.integer  "civicoins"
    t.string   "nationalityrails"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["blood_type_id"], name: "index_users_on_blood_type_id", using: :btree
    t.index ["document_type_id"], name: "index_users_on_document_type_id", using: :btree
    t.index ["education_level_id"], name: "index_users_on_education_level_id", using: :btree
    t.index ["neighborhood_id"], name: "index_users_on_neighborhood_id", using: :btree
  end

  add_foreign_key "activities", "categories"
  add_foreign_key "activities", "institutions"
  add_foreign_key "activity_places", "activities"
  add_foreign_key "activity_places", "places"
  add_foreign_key "cities", "departments"
  add_foreign_key "district_areas", "cities"
  add_foreign_key "institution_by_cathegories", "categories"
  add_foreign_key "institution_by_cathegories", "institutions"
  add_foreign_key "interest_by_cathegories", "categories"
  add_foreign_key "interest_by_cathegories", "users"
  add_foreign_key "neighborhoods", "district_areas"
  add_foreign_key "neighborhoods", "upzs"
  add_foreign_key "places", "neighborhoods"
  add_foreign_key "upzs", "district_areas"
  add_foreign_key "user_activities", "activities"
  add_foreign_key "user_activities", "users"
  add_foreign_key "users", "blood_types"
  add_foreign_key "users", "document_types"
  add_foreign_key "users", "education_levels"
  add_foreign_key "users", "neighborhoods"
end
