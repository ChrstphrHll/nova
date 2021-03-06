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

ActiveRecord::Schema[7.0].define(version: 2022_06_23_181230) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.text "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_powers", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.bigint "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_active_powers_on_spark_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.text "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.text "key", null: false
    t.text "filename", null: false
    t.text "content_type"
    t.text "metadata"
    t.text "service_name", null: false
    t.bigint "byte_size", null: false
    t.text "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.text "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "passives", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.bigint "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_passives_on_spark_id"
  end

  create_table "persistent_mods", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.bigint "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_persistent_mods_on_spark_id"
  end

  create_table "pilots", force: :cascade do |t|
    t.text "name"
    t.text "call_sign"
    t.text "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "pronouns"
    t.integer "spark_id"
    t.integer "shade"
    t.integer "sun"
    t.integer "moon"
    t.index ["spark_id"], name: "index_pilots_on_spark_id"
    t.index ["user_id"], name: "index_pilots_on_user_id"
  end

  create_table "power_mods", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.bigint "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_power_mods_on_spark_id"
  end

  create_table "sparks", force: :cascade do |t|
    t.text "name"
    t.text "flavor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "supernovas", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.bigint "spark_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spark_id"], name: "index_supernovas_on_spark_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email", default: "", null: false
    t.text "encrypted_password", default: "", null: false
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_powers", "sparks"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "passives", "sparks"
  add_foreign_key "persistent_mods", "sparks"
  add_foreign_key "pilots", "sparks"
  add_foreign_key "pilots", "users"
  add_foreign_key "power_mods", "sparks"
  add_foreign_key "supernovas", "sparks"
end
