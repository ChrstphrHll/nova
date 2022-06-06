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

ActiveRecord::Schema[7.0].define(version: 2022_06_03_171604) do
  create_table "active_powers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_active_powers_on_spark_id"
  end

  create_table "passives", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_passives_on_spark_id"
  end

  create_table "persistent_mods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_persistent_mods_on_spark_id"
  end

  create_table "power_mods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_power_mods_on_spark_id"
  end

  create_table "sparks", force: :cascade do |t|
    t.string "name"
    t.text "flavor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "supernovas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_supernovas_on_spark_id"
  end

  add_foreign_key "active_powers", "sparks"
  add_foreign_key "passives", "sparks"
  add_foreign_key "persistent_mods", "sparks"
  add_foreign_key "power_mods", "sparks"
  add_foreign_key "supernovas", "sparks"
end
