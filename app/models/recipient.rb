class Recipient < ApplicationRecord
  has_many :gifts

  validates :name, presence: true
  validates :address, presence: true
end
