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

ActiveRecord::Schema.define(version: 20170122015730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enterprises", force: :cascade do |t|
    t.integer  "enterprise_id"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "representante"
    t.string   "url"
    t.string   "telefono"
    t.string   "movil"
    t.string   "email"
    t.string   "logo"
    t.string   "estado"
    t.json     "json"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["enterprise_id"], name: "index_enterprises_on_enterprise_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string   "nombre"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "token"
    t.integer  "user_id"
    t.string   "aplicacion"
    t.string   "detalle"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tokens_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "login"
    t.string   "password_digest"
    t.string   "token"
    t.string   "estado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["person_id"], name: "index_users_on_person_id", using: :btree
  end

  add_foreign_key "enterprises", "enterprises"
  add_foreign_key "tokens", "users"
  add_foreign_key "users", "people"
end
