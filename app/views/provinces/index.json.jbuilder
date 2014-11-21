json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :code, :pst, :gst, :hst
  json.url province_url(province, format: :json)
end
