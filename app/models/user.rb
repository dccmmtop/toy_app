class User < ApplicationRecord
  # attr_accessor :name,:email
  EMAIL_FORMAT= /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, presence: true, length: { maximum: 50, minimum: 2 }
  validates :email, presence:true,length:{ maximum:50},format:{with:EMAIL_FORMAT},uniqueness:{case_sensitive: false}
  # validates :password_digest,presence:true
  has_secure_password

end
