require 'test_helper'

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get AuthenticateUser" do
    get authentication_controller_AuthenticateUser_url
    assert_response :success
  end

end
