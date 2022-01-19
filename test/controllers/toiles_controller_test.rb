require "test_helper"

class ToilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toiles_index_url
    assert_response :success
  end

  test "should get show" do
    get toiles_show_url
    assert_response :success
  end

  test "should get new" do
    get toiles_new_url
    assert_response :success
  end

  test "should get edit" do
    get toiles_edit_url
    assert_response :success
  end
end
