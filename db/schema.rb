# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160921195223) do

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pledges", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "reward_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pledges", ["product_id"], name: "index_pledges_on_product_id"
  add_index "pledges", ["reward_id"], name: "index_pledges_on_reward_id"
  add_index "pledges", ["user_id"], name: "index_pledges_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "goal"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "user_id"
    t.string   "tags"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image_url"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id"

  create_table "rewards", force: :cascade do |t|
    t.string   "title"
    t.integer  "amount"
    t.text     "description"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rewards", ["product_id"], name: "index_rewards_on_product_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
