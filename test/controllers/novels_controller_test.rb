require "test_helper"

class NovelsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

end
