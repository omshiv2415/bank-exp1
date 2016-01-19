class AddBalanceToCustomerTable < ActiveRecord::Migration
  def change
		add_column :Customers, :accountBalance, :string
  end
end
