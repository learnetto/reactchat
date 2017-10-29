require 'test_helper'

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'should get index' do
    sign_in users(:one)

    get chatrooms_url
    assert_response :success
  end

  test 'should get show' do
    sign_in users(:one)

    get chatroom_url(chatrooms(:one))
    assert_response :success
  end
end
