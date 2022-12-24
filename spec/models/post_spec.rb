require 'rails_helper'

RSpec.describe Post, type: :model do
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

  it 'is not valid without a title' do
    post.title = nil
    expect(post).to_not be_valid
  end

  it 'is not valid with a title less than 3 characters' do
    post.title = 'he'
    expect(post).to_not be_valid
  end
end
