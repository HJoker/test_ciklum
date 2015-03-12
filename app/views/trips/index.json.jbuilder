json.array!(@trips) do |trip|
  json.extract! trip, :id, :country_id, :visit_date
  json.url trip_url(trip, format: :json)
end
