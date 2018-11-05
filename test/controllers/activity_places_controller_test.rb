require 'test_helper'

class ActivityPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_place = activity_places(:one)
  end

  test "should get index" do
    get activity_places_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_place_url
    assert_response :success
  end

  test "should create activity_place" do
    assert_difference('ActivityPlace.count') do
      post activity_places_url, params: { activity_place: { activity_id: @activity_place.activity_id, place_id: @activity_place.place_id } }
    end

    assert_redirected_to activity_place_url(ActivityPlace.last)
  end

  test "should show activity_place" do
    get activity_place_url(@activity_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_place_url(@activity_place)
    assert_response :success
  end

  test "should update activity_place" do
    patch activity_place_url(@activity_place), params: { activity_place: { activity_id: @activity_place.activity_id, place_id: @activity_place.place_id } }
    assert_redirected_to activity_place_url(@activity_place)
  end

  test "should destroy activity_place" do
    assert_difference('ActivityPlace.count', -1) do
      delete activity_place_url(@activity_place)
    end

    assert_redirected_to activity_places_url
  end
end
