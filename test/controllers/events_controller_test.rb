require "test_helper"

class EventsControllerTest < ActionController::TestCase

  def event
    @event ||= events :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Event.count') do
      post :create, event: { chapter_id: event.chapter_id, title: event.title }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  def test_show
    get :show, id: event
    assert_response :success
  end

  def test_edit
    get :edit, id: event
    assert_response :success
  end

  def test_update
    put :update, id: event, event: { chapter_id: event.chapter_id, title: event.title }
    assert_redirected_to event_path(assigns(:event))
  end

  def test_destroy
    assert_difference('Event.count', -1) do
      delete :destroy, id: event
    end

    assert_redirected_to events_path
  end
end
