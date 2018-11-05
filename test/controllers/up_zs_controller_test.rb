require 'test_helper'

class UpZsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upz = upzs(:one)
  end

  test "should get index" do
    get upzs_url
    assert_response :success
  end

  test "should get new" do
    get new_upz_url
    assert_response :success
  end

  test "should create upz" do
    assert_difference('Upz.count') do
      post upzs_url, params: { upz: { code: @upz.code, district_area_id: @upz.district_area_id, latitude: @upz.latitude, longitude: @upz.longitude, name: @upz.name, shape: @upz.shape } }
    end

    assert_redirected_to upz_url(Upz.last)
  end

  test "should show upz" do
    get upz_url(@upz)
    assert_response :success
  end

  test "should get edit" do
    get edit_upz_url(@upz)
    assert_response :success
  end

  test "should update upz" do
    patch upz_url(@upz), params: { upz: { code: @upz.code, district_area_id: @upz.district_area_id, latitude: @upz.latitude, longitude: @upz.longitude, name: @upz.name, shape: @upz.shape } }
    assert_redirected_to upz_url(@upz)
  end

  test "should destroy upz" do
    assert_difference('Upz.count', -1) do
      delete upz_url(@upz)
    end

    assert_redirected_to upzs_url
  end
end
