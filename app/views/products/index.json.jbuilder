json.array!(@products) do |product|
  json.extract! product, :name, :description, :list_price, :member_price, :category
  json.url product_url(product, format: :json)
end