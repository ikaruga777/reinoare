require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, answer: { chief_organizer: @answer.chief_organizer, organizer01: @answer.organizer01, organizer02: @answer.organizer02, organizer03: @answer.organizer03, organizer04: @answer.organizer04, question01: @answer.question01, question02: @answer.question02, question03: @answer.question03, question04: @answer.question04, question05: @answer.question05, user_id: @answer.user_id }
    end

    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should show answer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer" do
    patch :update, id: @answer, answer: { chief_organizer: @answer.chief_organizer, organizer01: @answer.organizer01, organizer02: @answer.organizer02, organizer03: @answer.organizer03, organizer04: @answer.organizer04, question01: @answer.question01, question02: @answer.question02, question03: @answer.question03, question04: @answer.question04, question05: @answer.question05, user_id: @answer.user_id }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
