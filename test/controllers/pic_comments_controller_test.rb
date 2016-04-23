require 'test_helper'

class PicCommentsControllerTest < ActionController::TestCase
  setup do
    @pic_comment = pic_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pic_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pic_comment" do
    assert_difference('PicComment.count') do
      post :create, pic_comment: { commemt: @pic_comment.commemt, pic_id: @pic_comment.pic_id, user_id: @pic_comment.user_id }
    end

    assert_redirected_to pic_comment_path(assigns(:pic_comment))
  end

  test "should show pic_comment" do
    get :show, id: @pic_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pic_comment
    assert_response :success
  end

  test "should update pic_comment" do
    patch :update, id: @pic_comment, pic_comment: { commemt: @pic_comment.commemt, pic_id: @pic_comment.pic_id, user_id: @pic_comment.user_id }
    assert_redirected_to pic_comment_path(assigns(:pic_comment))
  end

  test "should destroy pic_comment" do
    assert_difference('PicComment.count', -1) do
      delete :destroy, id: @pic_comment
    end

    assert_redirected_to pic_comments_path
  end
end
