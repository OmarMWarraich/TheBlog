class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :author_id
  has_many :comments, dependent: :destroy, foreign_key: :post_id
  has_many :likes, dependent: :destroy, foreign_key: :post_id
  after_save :update_posts_counter

  def recent_five_comments
    comments.order(created_at: :desc).limit(5)
  end

  private

  def update_posts_counter
    user.update(posts_counter: user.posts.count)
  end
end
