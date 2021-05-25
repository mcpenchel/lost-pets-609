class Pet < ApplicationRecord

  SPECIES = ["Shark", "Dog", "Cat", "Rabbit", "Hamster"]

  validates :name, :species, :found_at, presence: true
  validates :species, inclusion: { in: SPECIES }

  def pretty_found_at
    "#{(Date.today - found_at).to_i} days ago"
  end
end