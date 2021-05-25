class Pet < ApplicationRecord
  validates :species, :found_at, presence: true
  validates :species, inclusion: { in: ["Dog", "Cat", "Rabbit", "Hamster"] }
end
