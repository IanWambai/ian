class RemoveApprovedFromUser < ActiveRecord::Migration
  def change
  	remove_column :Users , :approved
end
end