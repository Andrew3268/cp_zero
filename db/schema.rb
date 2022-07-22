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

ActiveRecord::Schema.define(version: 2022_07_17_064334) do

  create_table "banners", force: :cascade do |t|
    t.string "b_title"
    t.string "b_sub_title"
    t.string "b_image"
    t.string "b_link"
    t.string "b_categories"
    t.string "b_hashtag"
    t.text "b_body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "banners_tags", id: false, force: :cascade do |t|
    t.integer "banner_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["banner_id"], name: "index_banners_tags_on_banner_id"
    t.index ["tag_id"], name: "index_banners_tags_on_tag_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "image"
    t.string "link"
    t.string "categories"
    t.integer "is_price"
    t.integer "was_price"
    t.integer "pct"
    t.string "hashtag"
    t.integer "ratings"
    t.integer "reviews"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_posts_tags_on_post_id"
    t.index ["tag_id"], name: "index_posts_tags_on_tag_id"
  end

  create_table "punches", force: :cascade do |t|
    t.integer "punchable_id", null: false
    t.string "punchable_type", limit: 20, null: false
    t.datetime "starts_at", null: false
    t.datetime "ends_at", null: false
    t.datetime "average_time", null: false
    t.integer "hits", default: 1, null: false
    t.index ["average_time"], name: "index_punches_on_average_time"
    t.index ["punchable_type", "punchable_id"], name: "punchable_index"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "banners_tags", "banners"
  add_foreign_key "banners_tags", "tags"
  add_foreign_key "posts_tags", "posts"
  add_foreign_key "posts_tags", "tags"
end
