class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests through: :appearances
  validates :number, uniqueness: true


  def self.number_search_to_id(number)
    episode = self.find_by(number: number)
    episode.id
  end

end
