require "application_system_test_case"

class CaretakersTest < ApplicationSystemTestCase
  setup do
    @caretaker = caretakers(:one)
  end

  test "visiting the index" do
    visit caretakers_url
    assert_selector "h1", text: "Caretakers"
  end

  test "should create caretaker" do
    visit caretakers_url
    click_on "New caretaker"

    fill_in "Address", with: @caretaker.address
    fill_in "Category", with: @caretaker.category
    fill_in "Email", with: @caretaker.email
    fill_in "First name", with: @caretaker.first_name
    fill_in "Last name", with: @caretaker.last_name
    fill_in "Mobile", with: @caretaker.mobile
    click_on "Create Caretaker"

    assert_text "Caretaker was successfully created"
    click_on "Back"
  end

  test "should update Caretaker" do
    visit caretaker_url(@caretaker)
    click_on "Edit this caretaker", match: :first

    fill_in "Address", with: @caretaker.address
    fill_in "Category", with: @caretaker.category
    fill_in "Email", with: @caretaker.email
    fill_in "First name", with: @caretaker.first_name
    fill_in "Last name", with: @caretaker.last_name
    fill_in "Mobile", with: @caretaker.mobile
    click_on "Update Caretaker"

    assert_text "Caretaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Caretaker" do
    visit caretaker_url(@caretaker)
    click_on "Destroy this caretaker", match: :first

    assert_text "Caretaker was successfully destroyed"
  end
end
