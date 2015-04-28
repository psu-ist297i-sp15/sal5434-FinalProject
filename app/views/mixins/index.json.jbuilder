json.array!(@mixins) do |mixin|
  json.extract! mixin, :id, :name, :amount
  json.url mixin_url(mixin, format: :json)
end
