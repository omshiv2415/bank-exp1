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

ActiveRecord::Schema.define(version: 20160119123501) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "customerId"
    t.string   "accountType"
    t.float    "accountBalance"
    t.integer  "branch_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "accounts", ["branch_id"], name: "index_accounts_on_branch_id"

  create_table "branches", force: :cascade do |t|
    t.string   "branchLocation"
    t.string   "branchCity"
    t.string   "branchCounty"
    t.string   "branchCode"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.text     "email"
    t.text     "address"
    t.string   "phone"
    t.string   "accountnumber"
    t.date     "dob"
    t.string   "cardnumber"
    t.string   "pin"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "balance"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "empName"
    t.string   "empAddress"
    t.string   "stringempPhone"
    t.string   "empRole"
    t.string   "empEmail"
    t.integer  "empBranch_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "employees", ["empBranch_id"], name: "index_employees_on_empBranch_id"

  create_table "transactions", force: :cascade do |t|
    t.string   "transType"
    t.string   "transMethod"
    t.string   "transDescription"
    t.integer  "transAccoung_id"
    t.integer  "transEmployee_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "transactions", ["transAccoung_id"], name: "index_transactions_on_transAccoung_id"
  add_index "transactions", ["transEmployee_id"], name: "index_transactions_on_transEmployee_id"

end
