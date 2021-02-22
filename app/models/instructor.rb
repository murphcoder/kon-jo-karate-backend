class Instructor < ApplicationRecord
    has_secure_password
    has_many :lesson_instructors
    has_many :lessons, through: :lesson_instructors
    has_many :locations, through: :lessons
    has_many :students, through: :lessons
    has_many :parents, through: :students
end
