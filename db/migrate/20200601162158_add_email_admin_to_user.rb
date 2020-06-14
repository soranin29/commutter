class AddEmailAdminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email, :string, null: false
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
