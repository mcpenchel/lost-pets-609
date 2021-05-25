class Pet < ApplicationRecord

  SPECIES = ["Shark", "Dog", "Cat", "Rabbit", "Hamster"]

  validates :species, :found_at, presence: true
  validates :species, inclusion: { in: SPECIES }
end
