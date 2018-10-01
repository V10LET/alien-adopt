class Alien < ApplicationRecord
  belongs_to :planet
  belongs_to :owner
  belongs_to :toy
  has_many :personality_traits
  has_many :personalities, through: :personality_traits

  validates :name, presence: true, uniqueness: true
  validates :bio, length: { maximum: 250}
  validates :owner, presence: true, allow_nil: true
end
