class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :display_name, :string
    add_column :users, :cardID, :string
    add_column :users, :issub, :boolean, default: false
  end
end
