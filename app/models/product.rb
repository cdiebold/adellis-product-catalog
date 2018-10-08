class Product < ApplicationRecord
  self.primary_key = :nsn
  validates :nsn, presence: true
  validates :name, presence: true
  validates :part_number, presence: true
end
