class Gift < ApplicationRecord
  belongs_to :recipient
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :status, presence: true
  validates :occasion, presence: true
end
