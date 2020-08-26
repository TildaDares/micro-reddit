class Comment < ApplicationRecord
  validates :name, presence: true, length: {minimum:3, maximum:15}
  validates :body, :post, presence: true
  belongs_to :post
  has_one :user, through: :post
end
