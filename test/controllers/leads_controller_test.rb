require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get leads_new_url
    assert_response :success
  end

  test "should get create" do
    get leads_create_url
    assert_response :success
  end

end
