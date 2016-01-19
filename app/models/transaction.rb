class Transaction < ActiveRecord::Base
  belongs_to :transAccount
  belongs_to :transEmployee
end
