require "application_system_test_case"

class FtpfilesTest < ApplicationSystemTestCase
  setup do
    @ftpfile = ftpfiles(:one)
  end

  test "visiting the index" do
    visit ftpfiles_url
    assert_selector "h1", text: "Ftpfiles"
  end

  test "creating a Ftpfile" do
    visit ftpfiles_url
    click_on "New Ftpfile"

    fill_in "File Name", with: @ftpfile.file_name
    fill_in "Ftpcr", with: @ftpfile.ftpcr_id
    click_on "Create Ftpfile"

    assert_text "Ftpfile was successfully created"
    click_on "Back"
  end

  test "updating a Ftpfile" do
    visit ftpfiles_url
    click_on "Edit", match: :first

    fill_in "File Name", with: @ftpfile.file_name
    fill_in "Ftpcr", with: @ftpfile.ftpcr_id
    click_on "Update Ftpfile"

    assert_text "Ftpfile was successfully updated"
    click_on "Back"
  end

  test "destroying a Ftpfile" do
    visit ftpfiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ftpfile was successfully destroyed"
  end
end
