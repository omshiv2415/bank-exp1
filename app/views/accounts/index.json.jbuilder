json.array!(@accounts) do |account|
  json.extract! account, :id, :customerId, :accountType, :accountBalance, :branch_id
  json.url account_url(account, format: :json)
end
