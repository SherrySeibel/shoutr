class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.text :body, null: false
      t.belongs_to :user, null: false

      t.timestamps null: false
    end
  end
end
