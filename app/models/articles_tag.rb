class ArticlesTag < ApplicationRecord
  belongs_to :article
  belongs_to :tag

  validates :article, :tag, presence: true
end