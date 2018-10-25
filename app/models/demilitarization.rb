class Demilitarization < ApplicationRecord
  self.primary_key = :code
    validates :code, presence: true
    validates :description, presence: true

    validates :code, length: {is: 1}

    validates :code, uniqueness: true
end
