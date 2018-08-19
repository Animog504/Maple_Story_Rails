class Party < ApplicationRecord
  has_many :character_parties
  has_many :characters, through: :character_parties
end
