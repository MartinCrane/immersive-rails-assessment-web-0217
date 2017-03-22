class Appearance < ApplicationRecord
  has_many :guests
  has_many :episodes
  validates :rating, inclusion: { in: 1..5 }
end
