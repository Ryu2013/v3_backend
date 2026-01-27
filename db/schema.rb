# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2026_01_27_075633) do
  create_table "names", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shift_types", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "shift_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.time "starttime"
    t.time "endtime"
    t.bigint "shift_type_id"
    t.bigint "name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id"], name: "index_shifts_on_name_id"
    t.index ["shift_type_id"], name: "index_shifts_on_shift_type_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "shift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_users_on_shift_id"
  end

  add_foreign_key "shifts", "names"
  add_foreign_key "shifts", "shift_types"
  add_foreign_key "users", "shifts"
end
