require 'test_helper'

class SpeediesControllerTest < ActionController::TestCase
  setup do
    @speedy = speedies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speedies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speedy" do
    assert_difference('Speedy.count') do
      post :create, speedy: { final: @speedy.final, first: @speedy.first, ipaddress: @speedy.ipaddress, mobile: @speedy.mobile, useragent: @speedy.useragent }
    end

    assert_redirected_to speedy_path(assigns(:speedy))
  end

  test "should show speedy" do
    get :show, id: @speedy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speedy
    assert_response :success
  end

  test "should update speedy" do
    put :update, id: @speedy, speedy: { final: @speedy.final, first: @speedy.first, ipaddress: @speedy.ipaddress, mobile: @speedy.mobile, useragent: @speedy.useragent }
    assert_redirected_to speedy_path(assigns(:speedy))
  end

  test "should destroy speedy" do
    assert_difference('Speedy.count', -1) do
      delete :destroy, id: @speedy
    end

    assert_redirected_to speedies_path
  end
end
