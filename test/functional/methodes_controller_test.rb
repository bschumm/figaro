require 'test_helper'

class MethodesControllerTest < ActionController::TestCase
  setup do
    @methode = methodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:methodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create methode" do
    assert_difference('Methode.count') do
      post :create, methode: @methode.attributes
    end

    assert_redirected_to methode_path(assigns(:methode))
  end

  test "should show methode" do
    get :show, id: @methode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @methode
    assert_response :success
  end

  test "should update methode" do
    put :update, id: @methode, methode: @methode.attributes
    assert_redirected_to methode_path(assigns(:methode))
  end

  test "should destroy methode" do
    assert_difference('Methode.count', -1) do
      delete :destroy, id: @methode
    end

    assert_redirected_to methodes_path
  end
end
