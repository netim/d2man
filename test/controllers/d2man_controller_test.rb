require 'test_helper'

class D2manControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "D2Man"
  end
  test "should get home" do
    get d2man_home_url
    assert_response :success
  end
  test "should get new" do
    get signup_url
    assert_response :success
  end

end
