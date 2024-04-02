require "test_helper"

class DirectorsRegistredsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get directors_registreds_index_url
    assert_response :success
  end
end
