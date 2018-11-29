require 'test_helper'

class FtpcrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ftpcr = ftpcrs(:one)
  end

  test "should get index" do
    get ftpcrs_url
    assert_response :success
  end

  test "should get new" do
    get new_ftpcr_url
    assert_response :success
  end

  test "should create ftpcr" do
    assert_difference('Ftpcr.count') do
      post ftpcrs_url, params: { ftpcr: { dname: @ftpcr.dname, pw: @ftpcr.pw, uname: @ftpcr.uname } }
    end

    assert_redirected_to ftpcr_url(Ftpcr.last)
  end

  test "should show ftpcr" do
    get ftpcr_url(@ftpcr)
    assert_response :success
  end

  test "should get edit" do
    get edit_ftpcr_url(@ftpcr)
    assert_response :success
  end

  test "should update ftpcr" do
    patch ftpcr_url(@ftpcr), params: { ftpcr: { dname: @ftpcr.dname, pw: @ftpcr.pw, uname: @ftpcr.uname } }
    assert_redirected_to ftpcr_url(@ftpcr)
  end

  test "should destroy ftpcr" do
    assert_difference('Ftpcr.count', -1) do
      delete ftpcr_url(@ftpcr)
    end

    assert_redirected_to ftpcrs_url
  end
end
