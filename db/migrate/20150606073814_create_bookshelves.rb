class CreateBookshelves < ActiveRecord::Migration
  def change
    create_table :bookshelves do |t|
      t.string :book_title
      t.string :author
      t.integer :price
      t.string :publisher
      t.date :release_date
      t.string :isbn_code

      t.timestamps null: false
    end
  end
end
