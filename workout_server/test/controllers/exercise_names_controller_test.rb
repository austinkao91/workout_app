require 'test_helper'

class ExerciseNamesControllerTest < ActionController::TestCase
  setup do
    @exercise_name = exercise_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_name" do
    assert_difference('ExerciseName.count') do
      post :create, exercise_name: { name: @exercise_name.name }
    end

    assert_redirected_to exercise_name_path(assigns(:exercise_name))
  end

  test "should show exercise_name" do
    get :show, id: @exercise_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_name
    assert_response :success
  end

  test "should update exercise_name" do
    patch :update, id: @exercise_name, exercise_name: { name: @exercise_name.name }
    assert_redirected_to exercise_name_path(assigns(:exercise_name))
  end

  test "should destroy exercise_name" do
    assert_difference('ExerciseName.count', -1) do
      delete :destroy, id: @exercise_name
    end

    assert_redirected_to exercise_names_path
  end
end
