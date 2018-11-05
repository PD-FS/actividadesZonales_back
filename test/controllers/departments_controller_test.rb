require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @department = departments(:one)
  end

  test "should get index" do
    get departments_url
    assert_response :success
  end

  test "should get new" do
    get new_department_url
    assert_response :success
  end

  test "should create department" do
    assert_difference('Department.count') do
      post departments_url, params: { department: { area: @department.area, code: @department.code, latitude: @department.latitude, longitude: @department.longitude, name: @department.name, shape: @department.shape } }
    end

    assert_redirected_to department_url(Department.last)
  end

  test "should show department" do
    get department_url(@department)
    assert_response :success
  end

  test "should get edit" do
    get edit_department_url(@department)
    assert_response :success
  end

  test "should update department" do
    patch department_url(@department), params: { department: { area: @department.area, code: @department.code, latitude: @department.latitude, longitude: @department.longitude, name: @department.name, shape: @department.shape } }
    assert_redirected_to department_url(@department)
  end

  test "should destroy department" do
    assert_difference('Department.count', -1) do
      delete department_url(@department)
    end

    assert_redirected_to departments_url
  end
end
