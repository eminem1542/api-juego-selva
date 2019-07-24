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

ActiveRecord::Schema.define(version: 20190722194722) do

  create_table "juegos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "perfile_id"
    t.integer "resultado_id"
    t.string "nombre_usuario"
    t.string "ejercicioA"
    t.string "ejercicioB"
    t.string "ejercicioC"
    t.string "ejercicioD"
    t.string "ejercicioE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "nombre_usuario"
    t.string "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resultados", force: :cascade do |t|
    t.integer "user_id"
    t.integer "perfile_id"
    t.string "nombre_usuario"
    t.string "nombre_nivel"
    t.string "ejercicio"
    t.string "aciertos"
    t.string "fallos"
    t.string "tiempo"
    t.string "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tikets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "perfile_id"
    t.string "nombre_usuario"
    t.string "email"
    t.string "ejercicio_ecena"
    t.string "mensaje_error"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_recovery_token"
    t.datetime "password_recovery_expiration"
  end

end
