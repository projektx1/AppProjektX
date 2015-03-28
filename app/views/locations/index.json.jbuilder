json.array!(@locations) do |location|
  json.extract! location, :id, :country, :cityName
  json.url location_url(location, format: :json)
end
