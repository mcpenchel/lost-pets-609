class User < ApplicationRecord

  validates :username, :password, presence: true
  validates :role, inclusion: { in: ["admin", "customer", "company", nil] }

end
