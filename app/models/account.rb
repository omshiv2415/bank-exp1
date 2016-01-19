class Account < ActiveRecord::Base
  belongs_to :customer
  belongs_to :branch
  has_many :transactions
end
