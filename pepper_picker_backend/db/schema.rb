# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_02_164650) do

  create_table "plant_shops", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.integer "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_plant_shops_on_plant_id"
    t.index ["shop_id"], name: "index_plant_shops_on_shop_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "time_to_maturity"
    t.integer "cost"
    t.integer "sale_price"
    t.string "date_created"
    t.boolean "for_sale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.integer "money"
    t.string "date_created"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "plant_shops", "plants"
  add_foreign_key "plant_shops", "shops"
end
