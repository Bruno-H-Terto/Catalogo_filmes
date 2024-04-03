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

ActiveRecord::Schema[7.1].define(version: 2024_04_03_081602) do
  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "movie_genders_id", default: 0, null: false
    t.index ["movie_genders_id"], name: "index_directors_on_movie_genders_id"
  end

  create_table "movie_genders", force: :cascade do |t|
    t.string "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "directors_id", default: 0, null: false
    t.integer "movie_genders_id", default: 0, null: false
    t.integer "release_year"
    t.integer "status", default: 0
    t.string "srcimg", default: "https://cdn.pixabay.com/photo/2015/03/25/13/04/page-not-found-688965_960_720.png"
    t.index ["directors_id"], name: "index_movies_on_directors_id"
    t.index ["movie_genders_id"], name: "index_movies_on_movie_genders_id"
  end

  add_foreign_key "directors", "movie_genders", column: "movie_genders_id"
  add_foreign_key "movies", "directors", column: "directors_id"
  add_foreign_key "movies", "movie_genders", column: "movie_genders_id"
end
