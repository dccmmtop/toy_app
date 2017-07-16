class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140, minimum: 10 }
  validates :user_id, length: { minimum: 2, maximum: 10 }
end
