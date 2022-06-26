class Tag < ApplicationRecord
  has_many :tasks
  validates :title, presence: :true
  validates :color, presence: :true
end
