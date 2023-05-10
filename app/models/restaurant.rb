class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  #validators
  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORY }
end
