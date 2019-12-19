class Gift < ApplicationRecord
  belongs_to :recipient
  validates :title, presence: true
  validates :description, presence
end
