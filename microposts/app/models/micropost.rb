class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :favorited_users, through: :favorites, source: :micropost

  validates :content, presence: true, length: { maximum: 255 }
end
