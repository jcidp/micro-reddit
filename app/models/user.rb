class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 6..14 }
  validates :email, format: { with: /\A[-\w\.]+@([-\w]+\.)+[-\w]{2,4}\z/, message: "is not a valid email"}
  validates :password, length: { in: 8..18 }

  has_many :posts
end
