json.array!(@clients) do |client|
  json.extract! client, :id, :name, :mail, :skype
  json.url client_url(client, format: :json)
end
