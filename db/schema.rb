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

ActiveRecord::Schema.define(version: 2019_09_11_112653) do

  create_table "simple_hashtag_hashtaggings", force: :cascade do |t|
    t.integer "hashtag_id"
    t.string "hashtaggable_type"
    t.integer "hashtaggable_id"
    t.index ["hashtag_id"], name: "index_hashtaggings_hashtag"
    t.index ["hashtaggable_id", "hashtaggable_type"], name: "index_hashtaggings_hashtaggable_id_hashtaggable_type"
    t.index ["hashtaggable_type", "hashtaggable_id"], name: "index_hashtaggings_hashtaggable"
  end

  create_table "simple_hashtag_hashtags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_simple_hashtag_hashtags_on_name"
  end

end
