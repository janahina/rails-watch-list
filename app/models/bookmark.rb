class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :list, uniqueness: { scope: :movie}
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
end
