class Personality < ApplicationRecord
  has_many :personality_traits
  has_many :aliens, through: :personality_traits
end
