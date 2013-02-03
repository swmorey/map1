require 'test_helper'

class DistrictsControllerTest < ActionController::TestCase
  setup do
    @district = districts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:districts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create district" do
    assert_difference('District.count') do
      post :create, :district => { :address_line1 => @district.address_line1, :address_line2 => @district.address_line2, :city => @district.city, :director_name => @district.director_name, :district_class => @district.district_class, :district_name => @district.district_name, :email => @district.email, :latitude => @district.latitude, :longitude => @district.longitude, :phone => @district.phone, :population => @district.population, :service_hours => @district.service_hours, :state => @district.state, :website => @district.website, :zip => @district.zip }
    end

    assert_redirected_to district_path(assigns(:district))
  end

  test "should show district" do
    get :show, :id => @district
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @district
    assert_response :success
  end

  test "should update district" do
    put :update, :id => @district, :district => { :address_line1 => @district.address_line1, :address_line2 => @district.address_line2, :city => @district.city, :director_name => @district.director_name, :district_class => @district.district_class, :district_name => @district.district_name, :email => @district.email, :latitude => @district.latitude, :longitude => @district.longitude, :phone => @district.phone, :population => @district.population, :service_hours => @district.service_hours, :state => @district.state, :website => @district.website, :zip => @district.zip }
    assert_redirected_to district_path(assigns(:district))
  end

  test "should destroy district" do
    assert_difference('District.count', -1) do
      delete :destroy, :id => @district
    end

    assert_redirected_to districts_path
  end
end
