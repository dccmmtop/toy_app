class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10, minimum: 2 }
end
