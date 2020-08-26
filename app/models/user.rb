class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: {minimum:4, maximum:15}
  validates :password, presence: true, length: {minimum:7, maximum:15}
  has_many :posts
  has_many :comments, through: :posts
end
