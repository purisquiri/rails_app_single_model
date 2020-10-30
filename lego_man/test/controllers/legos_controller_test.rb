require 'test_helper'

class LegosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get legos_index_url
    assert_response :success
  end

  test "should get show" do
    get legos_show_url
    assert_response :success
  end

  test "should get new" do
    get legos_new_url
    assert_response :success
  end

end
