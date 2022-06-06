require "test_helper"

class SparksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sparks_index_url
    assert_response :success
  end
end
