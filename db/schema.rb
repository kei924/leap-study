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

ActiveRecord::Schema.define(version: 20160517114657) do

  create_table "chatrooms", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id", limit: 4
    t.integer  "teacher_id", limit: 4
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chatroom_id", limit: 4
    t.integer  "student_id",  limit: 4
    t.integer  "teacher_id",  limit: 4
    t.integer  "user_type",   limit: 4
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "gender",                 limit: 255
    t.string   "job",                    limit: 255
    t.string   "job_detail",             limit: 255
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "yomi",                   limit: 255
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255,   default: "",  null: false
    t.string   "prof_img",               limit: 255
    t.text     "status",                 limit: 65535
    t.text     "profile",                limit: 65535
    t.text     "study_story",            limit: 65535
    t.text     "prof_message",           limit: 65535
    t.string   "price",                  limit: 255,   default: "0"
    t.string   "possible_day_of_week",   limit: 255
    t.string   "frequency",              limit: 255
    t.string   "necessities",            limit: 255
    t.string   "encrypted_password",     limit: 255,   default: "",  null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true, using: :btree
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true, using: :btree

  create_table "tutors", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "prof_img",             limit: 255
    t.string   "status",               limit: 255
    t.text     "profile",              limit: 65535
    t.text     "study_story",          limit: 65535
    t.text     "message",              limit: 65535
    t.text     "price",                limit: 65535
    t.string   "possible_day_of_week", limit: 255
    t.string   "frequency",            limit: 255
    t.string   "necessities",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "yomi",                 limit: 255
  end

end
