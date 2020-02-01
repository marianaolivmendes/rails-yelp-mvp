class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japonese french belgian)}
  has_many :reviews, dependent: :destroy
end
