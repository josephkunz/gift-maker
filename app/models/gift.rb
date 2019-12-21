class Gift < ApplicationRecord
  belongs_to :recipient, optional: true
  belongs_to :user, optional: true
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :occasion, presence: true
end
