class LessonInstructor < ApplicationRecord
  belongs_to :lesson
  belongs_to :instructor
end
