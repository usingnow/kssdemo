json.array!(@cards) do |card|
  json.extract! card, :number, :status
  json.url card_url(card, format: :json)
end