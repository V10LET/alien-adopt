class Owner < ApplicationRecord
  belongs_to :planet
  has_many :aliens
end
