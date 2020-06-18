class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :messages, dependent: :destroy
  
  mount_uploader :picture, PictureUploader
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :picture, presence: true
  validates :content, presence: true, length: {maximum: 140}
  
  
  private

  
  
end
