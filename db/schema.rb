
ActiveRecord::Schema.define(version: 20140701180516) do
  enable_extension "plpgsql"
  create_table "following_relationships", force: true do |t|
    t.integer  "follower_id",      null: false
    t.integer  "followed_user_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end
  add_index "following_relationships", ["followed_user_id"], name: "index_following_relationships_on_followed_user_id", using: :btree
  add_index "following_relationships", ["follower_id", "followed_user_id"], name: "following_relationships_unique_constraint", unique: true, using: :btree
  add_index "following_relationships", ["follower_id"], name: "index_following_relationships_on_follower_id", using: :btree
  create_table "shouts", force: true do |t|
    t.integer  "user_id",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "subject_id",   null: false
    t.string   "subject_type", null: false
  end
  create_table "text_subjects", force: true do |t|
    t.string   "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end
end
