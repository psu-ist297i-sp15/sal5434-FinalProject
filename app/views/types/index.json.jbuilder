json.array!(@types) do |type|
  json.extract! type, :id, :name, :base, :comments
  json.url type_url(type, format: :json)
end
