class Remove < ActiveRecord::Migration
  def change
  	remove_column :users, :is_add_admin
  end
end
