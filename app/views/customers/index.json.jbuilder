json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :address, :phoneNo, :accounNumber, :balance, :dob, :cardNumber, :pin
  json.url customer_url(customer, format: :json)
end
