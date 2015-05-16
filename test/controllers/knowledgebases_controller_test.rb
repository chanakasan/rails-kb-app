require 'test_helper'

class KnowledgebasesControllerTest < ActionController::TestCase
  setup do
    @knowledgebase = knowledgebases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knowledgebases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knowledgebase" do
    assert_difference('Knowledgebase.count') do
      post :create, knowledgebase: { name: @knowledgebase.name }
    end

    assert_redirected_to knowledgebase_path(assigns(:knowledgebase))
  end

  test "should show knowledgebase" do
    get :show, id: @knowledgebase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knowledgebase
    assert_response :success
  end

  test "should update knowledgebase" do
    patch :update, id: @knowledgebase, knowledgebase: { name: @knowledgebase.name }
    assert_redirected_to knowledgebase_path(assigns(:knowledgebase))
  end

  test "should destroy knowledgebase" do
    assert_difference('Knowledgebase.count', -1) do
      delete :destroy, id: @knowledgebase
    end

    assert_redirected_to knowledgebases_path
  end
end
