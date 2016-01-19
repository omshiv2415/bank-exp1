class Customer < ActiveRecord::Base
	has_many :accounts
	validates :phone, :presence => true


end
