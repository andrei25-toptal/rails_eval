class Article < ApplicationRecord
  belongs_to :user
  has_many :articles_tags
  has_many :tags, through: :articles_tags

  validates :title, :user, presence: true
end