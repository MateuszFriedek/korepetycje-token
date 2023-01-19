require "application_system_test_case"

class TutorsTest < ApplicationSystemTestCase
  setup do
    @tutor = tutors(:one)
  end

  test "visiting the index" do
    visit tutors_url
    assert_selector "h1", text: "Tutors"
  end

  test "should create tutor" do
    visit tutors_url
    click_on "New tutor"

    fill_in "Degree", with: @tutor.degree
    fill_in "Description", with: @tutor.description
    fill_in "Email", with: @tutor.email
    check "Is remote" if @tutor.is_remote
    fill_in "Location", with: @tutor.location
    fill_in "Name", with: @tutor.name
    fill_in "Phone number", with: @tutor.phone_number
    fill_in "Start date", with: @tutor.start_date
    fill_in "Subject", with: @tutor.subject
    fill_in "User", with: @tutor.user_id
    click_on "Create Tutor"

    assert_text "Tutor was successfully created"
    click_on "Back"
  end

  test "should update Tutor" do
    visit tutor_url(@tutor)
    click_on "Edit this tutor", match: :first

    fill_in "Degree", with: @tutor.degree
    fill_in "Description", with: @tutor.description
    fill_in "Email", with: @tutor.email
    check "Is remote" if @tutor.is_remote
    fill_in "Location", with: @tutor.location
    fill_in "Name", with: @tutor.name
    fill_in "Phone number", with: @tutor.phone_number
    fill_in "Start date", with: @tutor.start_date
    fill_in "Subject", with: @tutor.subject
    fill_in "User", with: @tutor.user_id
    click_on "Update Tutor"

    assert_text "Tutor was successfully updated"
    click_on "Back"
  end

  test "should destroy Tutor" do
    visit tutor_url(@tutor)
    click_on "Destroy this tutor", match: :first

    assert_text "Tutor was successfully destroyed"
  end
end
