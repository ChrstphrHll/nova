require "test_helper"

class PilotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pilot_index_url
    assert_response :success
  end
end
