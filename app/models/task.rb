class Task < ApplicationRecord
  belongs_to :tag
  has_many :comments, dependent: :delete_all

  validates :description, presence: true
  validates :done, default: :false
  validates :priority, acceptance: { accept: [1,2,3]}
end
