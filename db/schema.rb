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

ActiveRecord::Schema[7.0].define(version: 2023_07_03_075724) do
  create_table "aktivni_pojistenis", force: :cascade do |t|
    t.integer "pojistenec_id", null: false
    t.integer "pojisteni_id", null: false
    t.integer "castka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pojistenec_id"], name: "index_aktivni_pojistenis_on_pojistenec_id"
    t.index ["pojisteni_id"], name: "index_aktivni_pojistenis_on_pojisteni_id"
  end

  create_table "pojistenecs", force: :cascade do |t|
    t.string "jmeno"
    t.string "prijmeni"
    t.date "datum_narozeni"
    t.string "telefon"
    t.string "email"
    t.text "ulice"
    t.text "mesto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pojistenis", force: :cascade do |t|
    t.string "nazev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aktivni_pojistenis", "pojistenecs"
  add_foreign_key "aktivni_pojistenis", "pojistenis"
end
