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

ActiveRecord::Schema.define(version: 20171124055631) do

  create_table "phone_numbers", force: :cascade do |t|
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "e_q1_1"
    t.integer "e_q1_2"
    t.integer "e_q2_1"
    t.integer "e_q2_2"
    t.integer "e_q3_1"
    t.integer "e_q3_2"
    t.integer "e_q4_1"
    t.integer "e_q4_2"
    t.integer "e_q5_1"
    t.integer "e_q5_2"
    t.integer "e_q6_1"
    t.integer "e_q6_2"
    t.integer "e_q7_1"
    t.integer "e_q7_2"
    t.integer "e_q8_1"
    t.integer "e_q8_2"
    t.integer "e_q9_1"
    t.integer "e_q9_2"
    t.integer "e_q10_1"
    t.integer "e_q10_2"
    t.integer "e_q11_1"
    t.integer "e_q11_2"
    t.integer "e_q12_1"
    t.integer "e_q12_2"
    t.integer "e_q13_1"
    t.integer "e_q13_2"
    t.integer "e_q14_1"
    t.integer "e_q14_2"
    t.integer "e_q15_1"
    t.integer "e_q15_2"
    t.integer "e_q16_1"
    t.integer "e_q16_2"
    t.integer "e_q17_1"
    t.integer "e_q17_2"
    t.integer "e_q18_1"
    t.integer "e_q18_2"
    t.integer "e_q19_1"
    t.integer "e_q19_2"
    t.integer "e_q20_1"
    t.integer "e_q20_2"
    t.integer "e_q21_1"
    t.integer "e_q21_2"
    t.integer "e_q22_1"
    t.integer "e_q22_2"
    t.integer "e_q23_1"
    t.integer "e_q23_2"
    t.integer "e_q24_1"
    t.integer "e_q24_2"
    t.integer "p_q1"
    t.integer "p_q2"
    t.string "p_q2_etc"
    t.integer "p_q3"
    t.string "p_q3_etc"
    t.integer "p_q4"
    t.integer "p_q5"
    t.integer "p_q6"
    t.integer "p_q7"
    t.integer "p_q8"
    t.integer "p_q9"
    t.integer "p_q10"
    t.integer "b_q1"
    t.string "b_q1_etc"
    t.integer "b_q2"
    t.integer "b_q3"
    t.integer "b_q4"
    t.integer "b_q5"
    t.integer "b_q6"
    t.integer "b_q7"
    t.integer "b_q8"
    t.integer "b_q9"
    t.integer "b_q10"
    t.integer "b_q11"
    t.string "b_q11_etc"
    t.integer "b_q12"
    t.string "b_q12_1"
    t.string "b_q12_1_etc"
    t.string "b_q12_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
