json.array!(@contents) do |content|
  json.extract! content, :id, :content, :level, :order, :book_id
  json.url content_url(content, format: :json)
end
