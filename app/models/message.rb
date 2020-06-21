class Message < ApplicationRecord
  belongs_to :post
  
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :comment, presence: true, length: {maximum: 140}
end
