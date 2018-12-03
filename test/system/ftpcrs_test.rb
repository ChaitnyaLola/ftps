require "application_system_test_case"

class FtpcrsTest < ApplicationSystemTestCase
  setup do
    @ftpcr = ftpcrs(:one)
  end

  test "visiting the index" do
    visit ftpcrs_url
    assert_selector "h1", text: "Ftpcrs"
  end

  test "creating a Ftpcr" do
    visit ftpcrs_url
    click_on "New Ftpcr"

    fill_in "Ip", with: @ftpcr.ip
    fill_in "Password", with: @ftpcr.password
    fill_in "Source Location", with: @ftpcr.source_location
    fill_in "Username", with: @ftpcr.username
    click_on "Create Ftpcr"

    assert_text "Ftpcr was successfully created"
    click_on "Back"
  end

  test "updating a Ftpcr" do
    visit ftpcrs_url
    click_on "Edit", match: :first

    fill_in "Ip", with: @ftpcr.ip
    fill_in "Password", with: @ftpcr.password
    fill_in "Source Location", with: @ftpcr.source_location
    fill_in "Username", with: @ftpcr.username
    click_on "Update Ftpcr"

    assert_text "Ftpcr was successfully updated"
    click_on "Back"
  end

  test "destroying a Ftpcr" do
    visit ftpcrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ftpcr was successfully destroyed"
  end
end
