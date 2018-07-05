require 'test_helper'

class DinnerControllerTest < ActionDispatch::IntegrationTest
  test "should get salad" do
    get dinner_salad_url
    assert_response :success
  end

end
