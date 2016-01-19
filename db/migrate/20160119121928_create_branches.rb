class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branchLocation
      t.string :branchCity
      t.string :branchCounty
      t.string :branchCode

      t.timestamps null: false
    end
  end
end
