class AddBookImgToBookshelves < ActiveRecord::Migration
  def change
    add_column :bookshelves, :book_img, :string
  end
end
