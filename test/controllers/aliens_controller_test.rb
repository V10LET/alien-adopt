require 'test_helper'

class AliensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aliens_index_url
    assert_response :success
  end

  test "should get show" do
    get aliens_show_url
    assert_response :success
  end

  test "should get edit" do
    get aliens_edit_url
    assert_response :success
  end

  test "should get new" do
    get aliens_new_url
    assert_response :success
  end

end
