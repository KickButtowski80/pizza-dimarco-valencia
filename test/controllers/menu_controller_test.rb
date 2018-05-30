require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get lunch" do
    get menu_lunch_url
    assert_response :success
  end

  test "should get dinner" do
    get menu_dinner_url
    assert_response :success
  end

end
