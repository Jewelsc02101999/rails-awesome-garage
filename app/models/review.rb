class Review < ApplicationRecord
  belongs_to :car
  validates :comment, length: { minimum: 6 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
