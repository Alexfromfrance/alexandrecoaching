class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lasttname, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :avatar, :string
  end
end
