require "application_system_test_case"

class ThedeadlinesTest < ApplicationSystemTestCase
  setup do
    @thedeadline = thedeadlines(:one)
  end

  test "visiting the index" do
    visit thedeadlines_url
    assert_selector "h1", text: "Thedeadlines"
  end

  test "should create thedeadline" do
    visit thedeadlines_url
    click_on "New thedeadline"

    fill_in "Deadlinetime", with: @thedeadline.deadlinetime
    click_on "Create Thedeadline"

    assert_text "Thedeadline was successfully created"
    click_on "Back"
  end

  test "should update Thedeadline" do
    visit thedeadline_url(@thedeadline)
    click_on "Edit this thedeadline", match: :first

    fill_in "Deadlinetime", with: @thedeadline.deadlinetime
    click_on "Update Thedeadline"

    assert_text "Thedeadline was successfully updated"
    click_on "Back"
  end

  test "should destroy Thedeadline" do
    visit thedeadline_url(@thedeadline)
    click_on "Destroy this thedeadline", match: :first

    assert_text "Thedeadline was successfully destroyed"
  end
end
