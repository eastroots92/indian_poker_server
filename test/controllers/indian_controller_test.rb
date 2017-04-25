require 'test_helper'

class IndianControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get list_new" do
    get :list_new
    assert_response :success
  end

  test "should get list_join" do
    get :list_join
    assert_response :success
  end

end
