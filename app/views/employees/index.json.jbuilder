json.array!(@employees) do |employee|
  json.extract! employee, :id, :empName, :empAddress, :stringempPhone, :empRole, :empEmail, :empBranch_id
  json.url employee_url(employee, format: :json)
end
