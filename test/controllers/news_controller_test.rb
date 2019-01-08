require 'test_helper'

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get news_add_url
    assert_response :success
  end

  test "should get edit" do
    get news_edit_url
    assert_response :success
  end

end
