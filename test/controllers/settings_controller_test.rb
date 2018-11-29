require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get branding" do
    get settings_branding_url
    assert_response :success
  end

end
