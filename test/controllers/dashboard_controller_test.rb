require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_dashboard" do
    get dashboard_admin_dashboard_url
    assert_response :success
  end
end
