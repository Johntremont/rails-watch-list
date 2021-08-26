class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :overview, :poster_url, :title, :rating, presence: true
  has_many :bookmarks
  has_many :lists, through: :bookmark
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }, numericality: { only_integer: true }
end
