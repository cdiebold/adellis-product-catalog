class Quote < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :company, presence: true
  validates :part_number, presence: true
  validates :nsn, presence: true
  validates :quantity, presence: true
  validates :condition, presence: true
  validates :priority, presence: true
end
