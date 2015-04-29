json.array!(@shakes) do |shake|
  json.extract! shake, :id, :name
  json.url shake_url(shake, format: :json)
end
