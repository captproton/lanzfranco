require "test_helper"

class CharactersControllerTest < ActionController::TestCase

  def character
    @character ||= characters :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Character.count') do
      post :create, character: { name: character.name }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  def test_show
    get :show, id: character
    assert_response :success
  end

  def test_edit
    get :edit, id: character
    assert_response :success
  end

  def test_update
    put :update, id: character, character: { name: character.name }
    assert_redirected_to character_path(assigns(:character))
  end

  def test_destroy
    assert_difference('Character.count', -1) do
      delete :destroy, id: character
    end

    assert_redirected_to characters_path
  end
end
