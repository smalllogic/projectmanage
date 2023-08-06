class Thedeadline < ApplicationRecord
  validates :deadlinetime, presence: true
  has_many :tasks
end
