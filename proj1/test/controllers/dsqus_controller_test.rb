require 'test_helper'

class DsqusControllerTest < ActionController::TestCase
  setup do
    @dsqu = dsqus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dsqus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dsqu" do
    assert_difference('Dsqu.count') do
      post :create, dsqu: { body: @dsqu.body, issue_id: @dsqu.issue_id, user_name: @dsqu.user_name }
    end

    assert_redirected_to dsqu_path(assigns(:dsqu))
  end

  test "should show dsqu" do
    get :show, id: @dsqu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dsqu
    assert_response :success
  end

  test "should update dsqu" do
    patch :update, id: @dsqu, dsqu: { body: @dsqu.body, issue_id: @dsqu.issue_id, user_name: @dsqu.user_name }
    assert_redirected_to dsqu_path(assigns(:dsqu))
  end

  test "should destroy dsqu" do
    assert_difference('Dsqu.count', -1) do
      delete :destroy, id: @dsqu
    end

    assert_redirected_to dsqus_path
  end
end
