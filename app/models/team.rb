class Team < ApplicationRecord

  validates :title, presence: true
  has_many :projects

  has_many :memberships
 has_many :users, through: :memberships
end
