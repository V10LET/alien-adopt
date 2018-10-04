require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get owners_show_url
    assert_response :success
  end

  test "should get new" do
    get owners_new_url
    assert_response :success
  end

end
