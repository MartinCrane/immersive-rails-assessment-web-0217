class Guest < ApplicationRecord
  has_many :guest_episodes
  has_many :episodes through: :appearances
  validates :name, uniqueness: true


  def self.name_search_to_id(name)
    guest = self.find_by(name: name)
    guest.id
  end
end
