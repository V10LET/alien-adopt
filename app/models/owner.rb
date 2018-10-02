class Owner < ApplicationRecord
  has_secure_password
  belongs_to :planet
  has_many :aliens

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :bio, length: { maximum: 250}
  # validates :owner, presence: true, allow_nil: true
end
