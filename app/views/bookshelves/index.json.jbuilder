json.array!(@bookshelves) do |bookshelf|
  json.extract! bookshelf, :id, :book_title, :author, :price, :publisher, :release_date, :isbn_code
  json.url bookshelf_url(bookshelf, format: :json)
end
