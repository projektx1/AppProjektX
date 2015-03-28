require 'test_helper'

class ContestsControllerTest < ActionController::TestCase
  setup do
    @contest = contests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest" do
    assert_difference('Contest.count') do
      post :create, contest: { URL: @contest.URL, beginDate: @contest.beginDate, contestName: @contest.contestName, creationDate: @contest.creationDate, endDate: @contest.endDate, fullDescription: @contest.fullDescription, has_attached_file: @contest.has_attached_file, isActive: @contest.isActive, isPromotedMode: @contest.isPromotedMode, isStandardMode: @contest.isStandardMode, isVIPMode: @contest.isVIPMode, picture: @contest.picture, shortDescription: @contest.shortDescription }
    end

    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should show contest" do
    get :show, id: @contest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest
    assert_response :success
  end

  test "should update contest" do
    patch :update, id: @contest, contest: { URL: @contest.URL, beginDate: @contest.beginDate, contestName: @contest.contestName, creationDate: @contest.creationDate, endDate: @contest.endDate, fullDescription: @contest.fullDescription, has_attached_file: @contest.has_attached_file, isActive: @contest.isActive, isPromotedMode: @contest.isPromotedMode, isStandardMode: @contest.isStandardMode, isVIPMode: @contest.isVIPMode, picture: @contest.picture, shortDescription: @contest.shortDescription }
    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should destroy contest" do
    assert_difference('Contest.count', -1) do
      delete :destroy, id: @contest
    end

    assert_redirected_to contests_path
  end
end
