class AddAdminToUserGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :user_groups, :admin_id, :integer
  end
end
