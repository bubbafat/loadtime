require 'test_helper'

class TimeItControllerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
