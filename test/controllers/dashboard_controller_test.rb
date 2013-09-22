require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get gig" do
    get :gig
    assert_response :success
  end

end
