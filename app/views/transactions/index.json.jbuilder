json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :transType, :transMethod, :transDescription, :transAccount_id, :transEmployee_id
  json.url transaction_url(transaction, format: :json)
end
