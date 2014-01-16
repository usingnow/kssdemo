json.array!(@users) do |user|
  json.extract! user, :name, :gender, :mobile, :email, :card_id, :credit, :identity_id
  json.url user_url(user, format: :json)
end