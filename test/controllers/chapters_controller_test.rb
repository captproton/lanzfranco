require "test_helper"

class ChaptersControllerTest < ActionController::TestCase

  def chapter
    @chapter ||= chapters :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:chapters)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Chapter.count') do
      post :create, chapter: { book_id: chapter.book_id, title: chapter.title }
    end

    assert_redirected_to chapter_path(assigns(:chapter))
  end

  def test_show
    get :show, id: chapter
    assert_response :success
  end

  def test_edit
    get :edit, id: chapter
    assert_response :success
  end

  def test_update
    put :update, id: chapter, chapter: { book_id: chapter.book_id, title: chapter.title }
    assert_redirected_to chapter_path(assigns(:chapter))
  end

  def test_destroy
    assert_difference('Chapter.count', -1) do
      delete :destroy, id: chapter
    end

    assert_redirected_to chapters_path
  end
end
