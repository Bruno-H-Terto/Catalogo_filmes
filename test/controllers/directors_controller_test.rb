require "test_helper"

class DirectorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get directors_new_url
    assert_response :success
  end
end
