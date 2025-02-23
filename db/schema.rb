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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120522222443) do

  create_table "articles", :force => true do |t|
    t.integer  "quantity"
    t.string   "description"
    t.integer  "iva",                                       :default => 16
    t.integer  "invoice_id"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.decimal  "unit_cost",   :precision => 8, :scale => 2, :default => 0.0
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "rfc"
    t.string   "street"
    t.string   "num_ext"
    t.string   "num_int"
    t.string   "suburb"
    t.string   "township"
    t.string   "state"
    t.integer  "cp"
    t.string   "logo_emp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.string   "email"
  end

  create_table "folio_details", :force => true do |t|
    t.integer  "folio_id"
    t.integer  "folio_detail_id"
    t.integer  "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "folios", :force => true do |t|
    t.integer  "user_id"
    t.integer  "finish"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "initiation"
    t.string   "qr"
    t.date     "date_initiation"
    t.date     "date_finish"
    t.integer  "approval"
    t.integer  "activo"
  end

  create_table "invoices", :force => true do |t|
    t.date     "date"
    t.integer  "client_id"
    t.integer  "folio_detail_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "status"
    t.integer  "student_id"
  end

  create_table "resumes", :force => true do |t|
    t.integer  "invoice_id"
    t.string   "letter_number"
    t.string   "payment_condition"
    t.string   "receipt"
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
    t.string   "places"
    t.integer  "tax_regime"
    t.string   "concept"
    t.decimal  "quantity",          :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "ret_isr",           :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "ret_iva",           :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "subtotal",          :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "total",             :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "iva",               :precision => 8, :scale => 2, :default => 0.0
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "grade"
    t.string   "curp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "client_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",  :null => false
    t.string   "encrypted_password",     :default => "",  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.string   "name"
    t.string   "rfc"
    t.string   "street"
    t.string   "num_ext"
    t.string   "num_int"
    t.string   "suburb"
    t.string   "township"
    t.string   "state"
    t.integer  "cp"
    t.string   "logo_emp",               :default => "0"
    t.string   "username"
    t.integer  "tax_regime",             :default => 0
    t.integer  "active",                 :default => 0
    t.string   "curp"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
