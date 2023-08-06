require "test_helper"

class ThedeadlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thedeadline = thedeadlines(:one)
  end

  test "should get index" do
    get thedeadlines_url
    assert_response :success
  end

  test "should get new" do
    get new_thedeadline_url
    assert_response :success
  end

  test "should create thedeadline" do
    assert_difference("Thedeadline.count") do
      post thedeadlines_url, params: { thedeadline: { deadlinetime: @thedeadline.deadlinetime } }
    end

    assert_redirected_to thedeadline_url(Thedeadline.last)
  end

  test "should show thedeadline" do
    get thedeadline_url(@thedeadline)
    assert_response :success
  end

  test "should get edit" do
    get edit_thedeadline_url(@thedeadline)
    assert_response :success
  end

  test "should update thedeadline" do
    patch thedeadline_url(@thedeadline), params: { thedeadline: { deadlinetime: @thedeadline.deadlinetime } }
    assert_redirected_to thedeadline_url(@thedeadline)
  end

  test "should destroy thedeadline" do
    assert_difference("Thedeadline.count", -1) do
      delete thedeadline_url(@thedeadline)
    end

    assert_redirected_to thedeadlines_url
  end
end
