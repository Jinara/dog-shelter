class Dog < ApplicationRecord
  enum status: [:found, :medical_overview, :ready, :adopted]

  validates :name, :breed, :status, presence: true
end
