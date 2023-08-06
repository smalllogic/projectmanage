class Task < ApplicationRecord
  validates :task_title, presence: true
  has_many :comments
  belongs_to :project
   belongs_to :thedeadline,optional: true
end
