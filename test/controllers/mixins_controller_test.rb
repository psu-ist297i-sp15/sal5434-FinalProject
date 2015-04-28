require 'test_helper'

class MixinsControllerTest < ActionController::TestCase
  setup do
    @mixin = mixins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mixins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mixin" do
    assert_difference('Mixin.count') do
      post :create, mixin: { amount: @mixin.amount, name: @mixin.name }
    end

    assert_redirected_to mixin_path(assigns(:mixin))
  end

  test "should show mixin" do
    get :show, id: @mixin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mixin
    assert_response :success
  end

  test "should update mixin" do
    patch :update, id: @mixin, mixin: { amount: @mixin.amount, name: @mixin.name }
    assert_redirected_to mixin_path(assigns(:mixin))
  end

  test "should destroy mixin" do
    assert_difference('Mixin.count', -1) do
      delete :destroy, id: @mixin
    end

    assert_redirected_to mixins_path
  end
end
