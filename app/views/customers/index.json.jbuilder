json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :address, :phone, :accountnumber, :dob, :cardnumber, :pin
  json.url customer_url(customer, format: :json)
end
