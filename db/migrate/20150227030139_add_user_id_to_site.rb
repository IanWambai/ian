class AddUserIdToSite < ActiveRecord::Migration
  def change
    add_column :sites, :user_id, :refrences
  end
end
