require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end

  test "login create path working" do
    post login_path
  end

  test "logout  path working" do
    delete logout_path
  end

end
