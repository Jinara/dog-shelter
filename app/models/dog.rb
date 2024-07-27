class Dog < ApplicationRecord
  enum status: {
    found: 0,
    medical_review: 1,
    ready: 2,
    adopted: 3
  }

  validates :name, :breed, :status, presence: true
end
