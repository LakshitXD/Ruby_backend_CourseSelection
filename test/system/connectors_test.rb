require "application_system_test_case"

class ConnectorsTest < ApplicationSystemTestCase
  setup do
    @connector = connectors(:one)
  end

  test "visiting the index" do
    visit connectors_url
    assert_selector "h1", text: "Connectors"
  end

  test "creating a Connector" do
    visit connectors_url
    click_on "New Connector"

    fill_in "Course", with: @connector.course_id
    fill_in "User", with: @connector.user_id
    click_on "Create Connector"

    assert_text "Connector was successfully created"
    click_on "Back"
  end

  test "updating a Connector" do
    visit connectors_url
    click_on "Edit", match: :first

    fill_in "Course", with: @connector.course_id
    fill_in "User", with: @connector.user_id
    click_on "Update Connector"

    assert_text "Connector was successfully updated"
    click_on "Back"
  end

  test "destroying a Connector" do
    visit connectors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Connector was successfully destroyed"
  end
end
