class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :email
      t.text :address
      t.string :phone
      t.string :accountnumber
      t.date :dob
      t.string :cardnumber
      t.string :pin
			t.string :balance
      t.timestamps null: false
    end
  end
end
