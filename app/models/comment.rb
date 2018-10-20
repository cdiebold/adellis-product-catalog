class Comment < ApplicationRecord
  validates :title, presence: true
  validates :title, length: {minimum: 3, maximum: 150}
  validates :message, presence: true
  validates :message, length: {minimum: 10, maximum: 1500}
end
