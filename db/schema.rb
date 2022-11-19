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
    t.string "rocket"
    t.integer "is_price"
    t.integer "was_price"
    t.integer "pct"
    t.string "hashtag"
    t.integer "ratings"
    t.integer "ratings_codes"
    t.integer "reviews"
    t.string "info_01"
    t.string "info_02"
    t.string "info_03"
    t.string "info_04"
    t.string "info_05"
    t.string "eva_title_01"
    t.string "eva_title_02"
    t.string "eva_title_03"
    t.string "eva_title_04"
    t.integer "eva_10"
    t.integer "eva_11"
    t.integer "eva_12"
    t.integer "eva_20"
    t.integer "eva_21"
    t.integer "eva_22"
    t.integer "eva_30"
    t.integer "eva_31"
    t.integer "eva_32"
    t.integer "eva_40"
    t.integer "eva_41"
    t.integer "eva_42"
    t.integer "doughnut_01"
    t.integer "doughnut_02"
    t.integer "doughnut_03"
    t.integer "doughnut_04"
    t.integer "doughnut_05"
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
