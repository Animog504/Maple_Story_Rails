class CharacterParty < ApplicationRecord
  belongs_to :party
  belongs_to :character
end
