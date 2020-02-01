class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :category, presence: true
  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: %w(Chinese Italian Japanese French Belgian)}
end
