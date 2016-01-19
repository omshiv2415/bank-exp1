class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :empName
      t.string :empAddress
      t.string :stringempPhone
      t.string :empRole
      t.string :empEmail
      t.references :empBranch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
