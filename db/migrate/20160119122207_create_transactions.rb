class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transType
      t.string :transMethod
      t.string :transDescription
      t.references :transAccount, index: true, foreign_key: true
      t.references :transEmployee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
