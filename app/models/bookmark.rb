class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, length: { minimum: 6 }
end
