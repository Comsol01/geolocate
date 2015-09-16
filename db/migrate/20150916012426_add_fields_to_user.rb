class AddFieldsToUser < ActiveRecord::Migration
  def change
    enable_extension "citext"
    
    add_column :users, :first_name, :citext, null: false
    add_column :users, :last_name, :citext, null: false
    add_column :users, :username, :citext, null: false
    add_column :users, :dob, :date, null: false
    add_index :users, :username, unique: true
  end
end
