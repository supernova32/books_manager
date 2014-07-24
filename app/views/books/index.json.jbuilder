json.array!(@books) do |book|
  json.extract! book, :id, :content, :level, :order, :id_book
  json.url book_url(book, format: :json)
end
