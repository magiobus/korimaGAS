class AddAdminColumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
  end
end
