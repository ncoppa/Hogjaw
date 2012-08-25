require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get tour_calendar" do
    get :tour_calendar
    assert_response :success
  end

end
