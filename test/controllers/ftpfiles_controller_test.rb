require 'test_helper'

class FtpfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ftpfile = ftpfiles(:one)
  end

  test "should get index" do
    get ftpfiles_url
    assert_response :success
  end

  test "should get new" do
    get new_ftpfile_url
    assert_response :success
  end

  test "should create ftpfile" do
    assert_difference('Ftpfile.count') do
      post ftpfiles_url, params: { ftpfile: { file_name: @ftpfile.file_name, ftpcr_id: @ftpfile.ftpcr_id } }
    end

    assert_redirected_to ftpfile_url(Ftpfile.last)
  end

  test "should show ftpfile" do
    get ftpfile_url(@ftpfile)
    assert_response :success
  end

  test "should get edit" do
    get edit_ftpfile_url(@ftpfile)
    assert_response :success
  end

  test "should update ftpfile" do
    patch ftpfile_url(@ftpfile), params: { ftpfile: { file_name: @ftpfile.file_name, ftpcr_id: @ftpfile.ftpcr_id } }
    assert_redirected_to ftpfile_url(@ftpfile)
  end

  test "should destroy ftpfile" do
    assert_difference('Ftpfile.count', -1) do
      delete ftpfile_url(@ftpfile)
    end

    assert_redirected_to ftpfiles_url
  end
end
