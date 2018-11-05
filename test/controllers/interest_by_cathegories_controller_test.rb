require 'test_helper'

class InterestByCathegoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interest_by_cathegory = interest_by_cathegories(:one)
  end

  test "should get index" do
    get interest_by_cathegories_url
    assert_response :success
  end

  test "should get new" do
    get new_interest_by_cathegory_url
    assert_response :success
  end

  test "should create interest_by_cathegory" do
    assert_difference('InterestByCathegory.count') do
      post interest_by_cathegories_url, params: { interest_by_cathegory: { category_id: @interest_by_cathegory.category_id, user_id: @interest_by_cathegory.user_id } }
    end

    assert_redirected_to interest_by_cathegory_url(InterestByCathegory.last)
  end

  test "should show interest_by_cathegory" do
    get interest_by_cathegory_url(@interest_by_cathegory)
    assert_response :success
  end

  test "should get edit" do
    get edit_interest_by_cathegory_url(@interest_by_cathegory)
    assert_response :success
  end

  test "should update interest_by_cathegory" do
    patch interest_by_cathegory_url(@interest_by_cathegory), params: { interest_by_cathegory: { category_id: @interest_by_cathegory.category_id, user_id: @interest_by_cathegory.user_id } }
    assert_redirected_to interest_by_cathegory_url(@interest_by_cathegory)
  end

  test "should destroy interest_by_cathegory" do
    assert_difference('InterestByCathegory.count', -1) do
      delete interest_by_cathegory_url(@interest_by_cathegory)
    end

    assert_redirected_to interest_by_cathegories_url
  end
end
