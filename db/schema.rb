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

ActiveRecord::Schema[7.0].define(version: 2022_03_04_210156) do
  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculapersonajes", force: :cascade do |t|
    t.integer "personaje_id", null: false
    t.integer "pelicula_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_peliculapersonajes_on_pelicula_id"
    t.index ["personaje_id"], name: "index_peliculapersonajes_on_personaje_id"
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "titulo"
    t.date "fecha_creacion"
    t.integer "calificacion"
    t.integer "genero_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genero_id"], name: "index_peliculas_on_genero_id"
  end

  create_table "personajes", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.integer "peso"
    t.text "historia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "peliculapersonajes", "peliculas"
  add_foreign_key "peliculapersonajes", "personajes"
  add_foreign_key "peliculas", "generos"
end
