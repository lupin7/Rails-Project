json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :stock_quantity, :image_filename
  json.url product_url(product, format: :json)
end
