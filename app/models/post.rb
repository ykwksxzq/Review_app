class Post < ApplicationRecord

  has_one_attached :image

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  belongs_to :genre
  belongs_to :shop

  has_many :post_tags,dependent: :destroy
  has_many :tags,through: :post_tags

end
