class Task < ApplicationRecord
  has_many :tasks_users, dependent: :destroy
  has_many :users, through: :tasks_users
  validates :name, presence: true
end
