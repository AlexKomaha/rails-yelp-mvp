class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :adress, presence: true
  validates :phone, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :categoey, inclusion: { in: CATEGORY }
end
