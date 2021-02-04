require 'test_helper'

class LoginAdmistradorControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get login_admistrador_signin_url
    assert_response :success
  end

end
