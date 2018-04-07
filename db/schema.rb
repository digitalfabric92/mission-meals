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

ActiveRecord::Schema.define(version: 20180407154054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakfasts", force: :cascade do |t|
    t.string "meal_name"
    t.integer "carbs_ingredients_id"
    t.integer "fruits_ingredients_id"
    t.integer "vegetables_ingredients_id"
    t.integer "amount_carbs"
    t.integer "amount_fruits"
    t.integer "amount_vegetables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days_of_week", force: :cascade do |t|
    t.string "day"
    t.integer "week_num"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "breakfasts_id"
    t.bigint "lunches_id"
    t.bigint "dinners_id"
    t.index ["breakfasts_id"], name: "index_days_of_week_on_breakfasts_id"
    t.index ["dinners_id"], name: "index_days_of_week_on_dinners_id"
    t.index ["lunches_id"], name: "index_days_of_week_on_lunches_id"
    t.index ["users_id"], name: "index_days_of_week_on_users_id"
  end

  create_table "dinners", force: :cascade do |t|
    t.string "meal_name"
    t.integer "carbs_ingredients_id"
    t.integer "fruits_ingredients_id"
    t.integer "vegetables_ingredients_id"
    t.integer "amount_carbs"
    t.integer "amount_fruits"
    t.integer "amount_vegetables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "calories"
    t.decimal "proteins", precision: 4, scale: 1
    t.decimal "fats", precision: 4, scale: 1
    t.decimal "carbs", precision: 4, scale: 1
    t.integer "prep_time"
    t.integer "preservation_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.string "meal_name"
    t.integer "carbs_ingredients_id"
    t.integer "meat_ingredients_id"
    t.integer "vegetables_ingredients_id"
    t.integer "amount_carbs"
    t.integer "amount_meat"
    t.integer "amount_vegetables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock", force: :cascade do |t|
    t.integer "food_id"
    t.integer "amount"
    t.date "collection_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ingredients_id"
    t.index ["ingredients_id"], name: "index_stock_on_ingredients_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "breakfasts", "ingredients", column: "carbs_ingredients_id"
  add_foreign_key "breakfasts", "ingredients", column: "fruits_ingredients_id"
  add_foreign_key "breakfasts", "ingredients", column: "vegetables_ingredients_id"
  add_foreign_key "days_of_week", "breakfasts", column: "breakfasts_id"
  add_foreign_key "days_of_week", "dinners", column: "dinners_id"
  add_foreign_key "days_of_week", "lunches", column: "lunches_id"
  add_foreign_key "days_of_week", "users", column: "users_id"
  add_foreign_key "dinners", "ingredients", column: "carbs_ingredients_id"
  add_foreign_key "dinners", "ingredients", column: "fruits_ingredients_id"
  add_foreign_key "dinners", "ingredients", column: "vegetables_ingredients_id"
  add_foreign_key "lunches", "ingredients", column: "carbs_ingredients_id"
  add_foreign_key "lunches", "ingredients", column: "meat_ingredients_id"
  add_foreign_key "lunches", "ingredients", column: "vegetables_ingredients_id"
  add_foreign_key "stock", "ingredients", column: "ingredients_id"
end
