require 'test_helper'

class SuggestionsControllerTest < ActionController::TestCase
  setup do
    @suggestion = suggestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suggestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suggestion" do
    assert_difference('Suggestion.count') do
      post :create, suggestion: { accepted_by_user_1: @suggestion.accepted_by_user_1, accepted_by_user_2: @suggestion.accepted_by_user_2, user_1: @suggestion.user_1, user_2: @suggestion.user_2 }
    end

    assert_redirected_to suggestion_path(assigns(:suggestion))
  end

  test "should show suggestion" do
    get :show, id: @suggestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suggestion
    assert_response :success
  end

  test "should update suggestion" do
    patch :update, id: @suggestion, suggestion: { accepted_by_user_1: @suggestion.accepted_by_user_1, accepted_by_user_2: @suggestion.accepted_by_user_2, user_1: @suggestion.user_1, user_2: @suggestion.user_2 }
    assert_redirected_to suggestion_path(assigns(:suggestion))
  end

  test "should destroy suggestion" do
    assert_difference('Suggestion.count', -1) do
      delete :destroy, id: @suggestion
    end

    assert_redirected_to suggestions_path
  end
end
