json.array!(@places) do |place|
  json.extract! place, :name, :state
  json.url place_url(place, format: :json)
end
