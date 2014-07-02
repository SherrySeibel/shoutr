class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    execute "UPDATE users SET username = id"
    change_column_null :users, :username, false

    add_index :users, :username, unique: true
  end
end
