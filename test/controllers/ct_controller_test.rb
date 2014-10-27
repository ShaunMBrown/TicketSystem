require 'test_helper'

class CtControllerTest < ActionController::TestCase
  test "should get CTLanding" do
    get :CTLanding
    assert_response :success
  end

end
