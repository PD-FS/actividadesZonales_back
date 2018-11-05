require 'test_helper'

class BloodTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_type = blood_types(:one)
  end

  test "should get index" do
    get blood_types_url
    assert_response :success
  end

  test "should get new" do
    get new_blood_type_url
    assert_response :success
  end

  test "should create blood_type" do
    assert_difference('BloodType.count') do
      post blood_types_url, params: { blood_type: { group: @blood_type.group, rh: @blood_type.rh } }
    end

    assert_redirected_to blood_type_url(BloodType.last)
  end

  test "should show blood_type" do
    get blood_type_url(@blood_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_blood_type_url(@blood_type)
    assert_response :success
  end

  test "should update blood_type" do
    patch blood_type_url(@blood_type), params: { blood_type: { group: @blood_type.group, rh: @blood_type.rh } }
    assert_redirected_to blood_type_url(@blood_type)
  end

  test "should destroy blood_type" do
    assert_difference('BloodType.count', -1) do
      delete blood_type_url(@blood_type)
    end

    assert_redirected_to blood_types_url
  end
end
