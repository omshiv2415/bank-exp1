class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :email
      t.text :address
      t.string :phoneNo
      t.string :accounNumber
      t.float :balance
      t.date :dob
      t.string :cardNumber
      t.string :pin

      t.timestamps null: false
    end
  end
end
