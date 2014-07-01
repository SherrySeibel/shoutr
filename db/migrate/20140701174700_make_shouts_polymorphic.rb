class MakeShoutsPolymorphic < ActiveRecord::Migration
  def change
    add_column :shouts, :subject_id, :integer
    add_column :shouts, :subject_type, :string # nothing is set to null: false right now because wwe don't have an associated table at the moment.
  end
end
