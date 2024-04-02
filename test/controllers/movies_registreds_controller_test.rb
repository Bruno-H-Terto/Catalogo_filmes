require "test_helper"

class MoviesRegistredsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get movies_registreds_show_url
    assert_response :success
  end
end
