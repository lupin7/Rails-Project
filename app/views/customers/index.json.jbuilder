json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :address, :city, :postal_code, :email
  json.url customer_url(customer, format: :json)
end
