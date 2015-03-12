json.array!(@currencies) do |currency|
  json.extract! currency, :id, :name, :code, :country_id
  json.url currency_url(currency, format: :json)
end
