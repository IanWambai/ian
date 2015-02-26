class AddApprovedToUser < ActiveRecord::Migration
  def change
    add_column :users, :approved, :boolean
    set_default :false
  end
end
