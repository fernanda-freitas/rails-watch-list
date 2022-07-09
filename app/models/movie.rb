class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true
  validates :title, :overview, presence: true
end

# has_many :bookmarks, dependent: :restrict_with_exception
