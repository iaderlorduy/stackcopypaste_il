json.array!(@categories) do |category|
  json.extract! category, :id, :title, :presence
  json.url category_url(category, format: :json)
end
