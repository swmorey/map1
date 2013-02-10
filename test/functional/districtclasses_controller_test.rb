require 'test_helper'

class DistrictclassesControllerTest < ActionController::TestCase
  setup do
    @districtclass = districtclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:districtclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create districtclass" do
    assert_difference('Districtclass.count') do
      post :create, districtclass: { description: @districtclass.description, id: @districtclass.id, title: @districtclass.title }
    end

    assert_redirected_to districtclass_path(assigns(:districtclass))
  end

  test "should show districtclass" do
    get :show, id: @districtclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @districtclass
    assert_response :success
  end

  test "should update districtclass" do
    put :update, id: @districtclass, districtclass: { description: @districtclass.description, id: @districtclass.id, title: @districtclass.title }
    assert_redirected_to districtclass_path(assigns(:districtclass))
  end

  test "should destroy districtclass" do
    assert_difference('Districtclass.count', -1) do
      delete :destroy, id: @districtclass
    end

    assert_redirected_to districtclasses_path
  end
end
