class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 8..64 }
  validates :link, presence: true, unless: :body
  validates :body, presence: true, unless: :link

  belongs_to :user
  has_many :comments
end
