require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test 'should get index' do
    get posts_url
    assert_response :success
  end

  test 'should get new' do
    get new_post_url
    assert_response :success
  end
  # rubocop : disable Layout/LineLength
  test 'should create post' do
    assert_difference('Post.count') do
      post posts_url,
           params: { post: { comments_counter: @post.comments_counter, likes_counter: @post.likes_counter, text: @post.text,
                             title: @post.title, user_id: @post.user_id } }
    end

    # rubocop : enable Layout/LineLength

    assert_redirected_to post_url(Post.last)
  end

  test 'should show post' do
    get post_url(@post)
    assert_response :success
  end

  test 'should get edit' do
    get edit_post_url(@post)
    assert_response :success
  end

  # rubocop : disable Layout/LineLength

  test 'should update post' do
    patch post_url(@post),
          params: { post: { comments_counter: @post.comments_counter, likes_counter: @post.likes_counter, text: @post.text,
                            title: @post.title, user_id: @post.user_id } }
    assert_redirected_to post_url(@post)
  end
  # rubocop : enable Layout/LineLength

  test 'should destroy post' do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
