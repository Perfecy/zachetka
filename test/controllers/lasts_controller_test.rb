require 'test_helper'

class LastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @last = lasts(:one)
  end

  test "should get index" do
    get lasts_url
    assert_response :success
  end

  test "should get new" do
    get new_last_url
    assert_response :success
  end

  test "should create last" do
    assert_difference('Last.count') do
      post lasts_url, params: { last: { date: @last.date, description: @last.description, image: @last.image, manager: @last.manager, name: @last.name } }
    end

    assert_redirected_to last_url(Last.last)
  end

  test "should show last" do
    get last_url(@last)
    assert_response :success
  end

  test "should get edit" do
    get edit_last_url(@last)
    assert_response :success
  end

  test "should update last" do
    patch last_url(@last), params: { last: { date: @last.date, description: @last.description, image: @last.image, manager: @last.manager, name: @last.name } }
    assert_redirected_to last_url(@last)
  end

  test "should destroy last" do
    assert_difference('Last.count', -1) do
      delete last_url(@last)
    end

    assert_redirected_to lasts_url
  end
end
