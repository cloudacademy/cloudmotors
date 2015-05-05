json.array!(@orders) do |order|
  json.extract! order, :id, :name, :email, :model, :details
  json.url order_url(order, format: :json)
end
