class Character < ApplicationRecord
  has_many :character_parties
  has_many :parties, through: :character_parties
  belongs_to :user
end
