require 'test_helper'

class Settings::BrandingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get settings_branding_index_url
    assert_response :success
  end

  test "should get update" do
    get settings_branding_update_url
    assert_response :success
  end

end
