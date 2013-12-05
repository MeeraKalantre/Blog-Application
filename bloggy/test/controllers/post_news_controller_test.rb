require 'test_helper'

class PostNewsControllerTest < ActionController::TestCase
  setup do
    @post_news = post_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_news" do
    assert_difference('PostNew.count') do
      post :create, post_news: { body: @post_news.body, comment: @post_news.comment, published_at: @post_news.published_at, title: @post_news.title }
    end

    assert_redirected_to post_news_path(assigns(:post_news))
  end

  test "should show post_news" do
    get :show, id: @post_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_news
    assert_response :success
  end

  test "should update post_news" do
    patch :update, id: @post_news, post_news: { body: @post_news.body, comment: @post_news.comment, published_at: @post_news.published_at, title: @post_news.title }
    assert_redirected_to post_news_path(assigns(:post_news))
  end

  test "should destroy post_news" do
    assert_difference('PostNew.count', -1) do
      delete :destroy, id: @post_news
    end

    assert_redirected_to post_news_path
  end
end
