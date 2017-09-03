require 'test_helper'

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chatrooms_index_url
    assert_response :success
  end

  test "should get show" do
    get chatrooms_show_url
    assert_response :success
  end

end
