class Gift < ApplicationRecord
  belongs_to :recipient
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :occasion, presence: true
end
