class AddBalanceToUser < ActiveRecord::Migration
  def change
    add_column :users, :balance, :string
  end
end
