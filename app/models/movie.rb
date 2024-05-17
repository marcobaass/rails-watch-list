class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks, dependent: :destroy

  validates :title, uniqueness: true
  validates :title, exclusion: [nil]
  validates :overview, exclusion: [nil]

end
