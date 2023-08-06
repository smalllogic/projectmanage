class Project < ApplicationRecord
  validates :title, presence: true
  belongs_to :team
  has_many :tasks, dependent: :destroy
end
