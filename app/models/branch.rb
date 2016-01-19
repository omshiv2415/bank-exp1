class Branch < ActiveRecord::Base
	has_many :accounts
  has_many :employees
end
