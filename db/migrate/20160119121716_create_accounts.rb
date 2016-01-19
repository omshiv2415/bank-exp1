class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :customerId
      t.string :accountType
      t.float :accountBalance
      t.references :branch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
