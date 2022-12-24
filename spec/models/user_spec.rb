require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(
      name: 'omar',
      photo: 'https://picsum.photos/200/300',
      bio: 'Developer, Programmer, and Software Engineer',
      posts_counter: 0
    )
  end

  before { subject.save }

  it 'is invalid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid if bio is not present' do
    subject.bio = nil
    expect(subject).to_not be_valid
  end

  it 'recent_three_posts returns the three most recent posts' do
    expect(subject.recent_three_posts).to eq(subject.posts.order(created_at: :desc).limit(3))
  end
end
