require 'rails_helper'

# RSpec.describe Comment, type: :model do
#     let(:user) do
#         User.new(
#             name: 'omar',
#             photo: 'https://picsum.photos/200/300',
#             bio: 'Developer, Programmer, and Software Engineer'
#             posts_counter: 0
#         )
#     end

#     let(:post) do
#         Post.new(
#             title: 'Hello World',
#             text: 'Lorem ipsum dolor sit amet, consectetur .',
#             author_id: user.id,
#             comments_counter: 0,
#             likes_counter: 0
#         )
#     end

#     let(:comment) do
#         Comment.new(
#             text: 'Lorem ipsum dolor sit amet, consectetur .',
#             author_id: user.id,
#             post_id: post.id
#         )
#     end

#     it 'is valid with valid attributes' do
#         expect(comment).to be_valid
#     end

#     it 'is not valid without a text' do
#         comment.text = nil
#         expect(comment).to_not be_valid
#     end

#     it 'updates comments_counter after save' do
#         comment.save
#         expect(post.comments_counter).to eq(1)
#     end
# end

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end
end
