require "test_helper"

class MovieGendersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get movie_genders_new_url
    assert_response :success
  end
end
