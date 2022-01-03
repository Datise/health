require "application_system_test_case"

class CheckinsTest < ApplicationSystemTestCase
  setup do
    @checkin = checkins(:one)
  end

  test "visiting the index" do
    visit checkins_url
    assert_selector "h1", text: "Checkins"
  end

  test "should create checkin" do
    visit checkins_url
    click_on "New checkin"

    fill_in "Date", with: @checkin.date
    fill_in "Mood", with: @checkin.mood
    fill_in "Sleep", with: @checkin.sleep
    fill_in "User", with: @checkin.user_id
    click_on "Create Checkin"

    assert_text "Checkin was successfully created"
    click_on "Back"
  end

  test "should update Checkin" do
    visit checkin_url(@checkin)
    click_on "Edit this checkin", match: :first

    fill_in "Date", with: @checkin.date
    fill_in "Mood", with: @checkin.mood
    fill_in "Sleep", with: @checkin.sleep
    fill_in "User", with: @checkin.user_id
    click_on "Update Checkin"

    assert_text "Checkin was successfully updated"
    click_on "Back"
  end

  test "should destroy Checkin" do
    visit checkin_url(@checkin)
    click_on "Destroy this checkin", match: :first

    assert_text "Checkin was successfully destroyed"
  end
end
