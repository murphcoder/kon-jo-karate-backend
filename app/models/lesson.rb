class Lesson < ApplicationRecord
  belongs_to :location
  has_many :transactions
  has_many :lesson_instructors
  has_many :categories
  has_many :students, through: :transactions
  has_many :instructors, through: :lesson_instructors
  has_many :parents, through: :students
end
