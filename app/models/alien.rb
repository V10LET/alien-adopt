class Alien < ApplicationRecord
  belongs_to :planet
  belongs_to :owner
  has_many :personality_traits
  has_many :personalities, through: :personality_traits
  has_many :toys
end
