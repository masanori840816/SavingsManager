require 'test_helper'

class DrawersControllerTest < ActionController::TestCase
  setup do
    @drawer = drawers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drawers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drawer" do
    assert_difference('Drawer.count') do
      post :create, drawer: { DrawerTitle: @drawer.DrawerTitle, TargetAmount: @drawer.TargetAmount, TargetDate: @drawer.TargetDate }
    end

    assert_redirected_to drawer_path(assigns(:drawer))
  end

  test "should show drawer" do
    get :show, id: @drawer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drawer
    assert_response :success
  end

  test "should update drawer" do
    patch :update, id: @drawer, drawer: { DrawerTitle: @drawer.DrawerTitle, TargetAmount: @drawer.TargetAmount, TargetDate: @drawer.TargetDate }
    assert_redirected_to drawer_path(assigns(:drawer))
  end

  test "should destroy drawer" do
    assert_difference('Drawer.count', -1) do
      delete :destroy, id: @drawer
    end

    assert_redirected_to drawers_path
  end
end
