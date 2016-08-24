require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get explore" do
    get :explore
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
