class AddBalanceToCustomerTable < ActiveRecord::Migration
  def change
		add_column :Customers, :balance, :string
  end
end
