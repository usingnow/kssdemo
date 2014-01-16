json.array!(@identities) do |identity|
  json.extract! identity, :name, :password
  json.url identity_url(identity, format: :json)
end