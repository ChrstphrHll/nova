class Pilot < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :call_sign, presence: true
  # validates :bio, presence: true, length: { minimum: 10 }
end
