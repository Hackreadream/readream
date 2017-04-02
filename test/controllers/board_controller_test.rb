require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get creat" do
    get :creat
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

end
