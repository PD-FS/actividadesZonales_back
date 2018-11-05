require 'test_helper'

class UserActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_activity = user_activities(:one)
  end

  test "should get index" do
    get user_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_user_activity_url
    assert_response :success
  end

  test "should create user_activity" do
    assert_difference('UserActivity.count') do
      post user_activities_url, params: { user_activity: { acceptance: @user_activity.acceptance, activity_id: @user_activity.activity_id, state: @user_activity.state, user_id: @user_activity.user_id } }
    end

    assert_redirected_to user_activity_url(UserActivity.last)
  end

  test "should show user_activity" do
    get user_activity_url(@user_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_activity_url(@user_activity)
    assert_response :success
  end

  test "should update user_activity" do
    patch user_activity_url(@user_activity), params: { user_activity: { acceptance: @user_activity.acceptance, activity_id: @user_activity.activity_id, state: @user_activity.state, user_id: @user_activity.user_id } }
    assert_redirected_to user_activity_url(@user_activity)
  end

  test "should destroy user_activity" do
    assert_difference('UserActivity.count', -1) do
      delete user_activity_url(@user_activity)
    end

    assert_redirected_to user_activities_url
  end
end
