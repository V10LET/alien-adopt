class Planet < ApplicationRecord
  has_many :aliens
  has_many :owners
end
