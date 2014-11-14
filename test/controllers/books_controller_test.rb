require "test_helper"

class BooksControllerTest < ActionController::TestCase

  def book
    @book ||= books :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Book.count') do
      post :create, book: { title: book.title }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  def test_show
    get :show, id: book
    assert_response :success
  end

  def test_edit
    get :edit, id: book
    assert_response :success
  end

  def test_update
    put :update, id: book, book: { title: book.title }
    assert_redirected_to book_path(assigns(:book))
  end

  def test_destroy
    assert_difference('Book.count', -1) do
      delete :destroy, id: book
    end

    assert_redirected_to books_path
  end
end
