require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logins_index_url
    assert_response :success
  end

  test "should get new" do
    get logins_new_url
    assert_response :success
  end

  test "should get create" do
    get logins_create_url
    assert_response :success
  end

  test "should get update" do
    get logins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get logins_destroy_url
    assert_response :success
  end

  test "should get show" do
    get logins_show_url
    assert_response :success
  end

  test "should get edit" do
    get logins_edit_url
    assert_response :success
  end

end
