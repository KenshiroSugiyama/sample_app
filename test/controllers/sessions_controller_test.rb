require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end
  
  def destroy
    logout if logged_in?
    redirect_to root_path
  end
end
