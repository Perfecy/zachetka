require 'test_helper'

class FestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fest = fests(:one)
  end

  test "should get index" do
    get fests_url
    assert_response :success
  end

  test "should get new" do
    get new_fest_url
    assert_response :success
  end

  test "should create fest" do
    assert_difference('Fest.count') do
      post fests_url, params: { fest: { date: @fest.date, description: @fest.description, image: @fest.image, name: @fest.name, organisator: @fest.organisator } }
    end

    assert_redirected_to fest_url(Fest.last)
  end

  test "should show fest" do
    get fest_url(@fest)
    assert_response :success
  end

  test "should get edit" do
    get edit_fest_url(@fest)
    assert_response :success
  end

  test "should update fest" do
    patch fest_url(@fest), params: { fest: { date: @fest.date, description: @fest.description, image: @fest.image, name: @fest.name, organisator: @fest.organisator } }
    assert_redirected_to fest_url(@fest)
  end

  test "should destroy fest" do
    assert_difference('Fest.count', -1) do
      delete fest_url(@fest)
    end

    assert_redirected_to fests_url
  end
end
