class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 200 } # Comments are limited to 200 characters
  default_scope -> { order(created_at: desc) } # Newest comments are always found first
end
