require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) do
    User.new(
      name: 'omar',
      photo: 'https://picsum.photos/200/300',
      bio: 'Developer, Programmer, and Software Engineer',
      posts_counter: 0
    )
  end

  let(:post) do
    Post.new(
      title: 'Hello World',
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      author_id: user.id,
      comments_counter: 0,
      likes_counter: 0
    )
  end

  let(:like) do
    Like.new(
      author_id: user.id,
      post_id: post.id
    )
  end

  it 'is not valid without an author_id' do
    like.author_id = nil
    expect(like).to_not be_valid
  end

  it 'is not valid without a post_id' do
    like.post_id = nil
    expect(like).to_not be_valid
  end
end
