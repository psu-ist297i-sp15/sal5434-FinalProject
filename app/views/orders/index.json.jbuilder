json.array!(@orders) do |order|
  json.extract! order, :id, :norderNum, :orderer, :name, :description, :comments, :size, :quantity
  json.url order_url(order, format: :json)
end
