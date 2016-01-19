json.array!(@branches) do |branch|
  json.extract! branch, :id, :branchLocation, :branchCity, :branchCounty, :branchCode
  json.url branch_url(branch, format: :json)
end
