require "test_helper"

class ChargingStationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get charging_stations_index_url
    assert_response :success
  end
end
