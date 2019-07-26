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

ActiveRecord::Schema.define(version: 2019_07_25_031144) do

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false, comment: "email - SNS認証時取込有"
    t.string "encrypted_password", default: "", null: false, comment: "暗号化パスワード"
    t.string "reset_password_token", comment: "パスワード再設定用トークン"
    t.datetime "reset_password_sent_at", comment: "パスワード再設定用トークン送信日時"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false, comment: "サインイン回数"
    t.datetime "current_sign_in_at", comment: "最新サインイン日時"
    t.datetime "last_sign_in_at", comment: "最新1つ前のサインイン日時"
    t.string "current_sign_in_ip", comment: "最新サインインIP"
    t.string "last_sign_in_ip", comment: "最新1つ前のサインインIP"
    t.string "confirmation_token", comment: "確認用トークン"
    t.datetime "confirmed_at", comment: "確認完了日時"
    t.datetime "confirmation_sent_at", comment: "確認メール送信日時"
    t.string "unconfirmed_email", comment: "未確認メールアドレス"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at", comment: "ロックアウト日時"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end