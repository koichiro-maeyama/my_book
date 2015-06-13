require 'test_helper'

class BookshelvesControllerTest < ActionController::TestCase
  setup do
    @bookshelf = bookshelves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookshelves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookshelf" do
    assert_difference('Bookshelf.count') do
      post :create, bookshelf: { author: @bookshelf.author, book_title: @bookshelf.book_title, isbn_code: @bookshelf.isbn_code, price: @bookshelf.price, publisher: @bookshelf.publisher, release_date: @bookshelf.release_date }
    end

    assert_redirected_to bookshelf_path(assigns(:bookshelf))
  end

  test "should show bookshelf" do
    get :show, id: @bookshelf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookshelf
    assert_response :success
  end

  test "should update bookshelf" do
    patch :update, id: @bookshelf, bookshelf: { author: @bookshelf.author, book_title: @bookshelf.book_title, isbn_code: @bookshelf.isbn_code, price: @bookshelf.price, publisher: @bookshelf.publisher, release_date: @bookshelf.release_date }
    assert_redirected_to bookshelf_path(assigns(:bookshelf))
  end

  test "should destroy bookshelf" do
    assert_difference('Bookshelf.count', -1) do
      delete :destroy, id: @bookshelf
    end

    assert_redirected_to bookshelves_path
  end
end
