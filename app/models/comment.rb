class Comment < ApplicationRecord
  belongs_to :task
  validates :description, presence: :true
end
