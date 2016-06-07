json.array!(@categories) do |category|
<<<<<<< HEAD
  json.extract! category, :id, :title, :presence
=======
  json.extract! category, :id, :title
>>>>>>> 48f9a1c51f09d7ec509fb4a492777c0b1343acfd
  json.url category_url(category, format: :json)
end
