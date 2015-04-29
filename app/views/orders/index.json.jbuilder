json.array!(@orders) do |order|
  json.extract! order, :id, :is_active, :pickup
  json.url order_url(order, format: :json)
end
