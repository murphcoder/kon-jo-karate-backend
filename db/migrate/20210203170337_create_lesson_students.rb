class CreateLessonStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_students do |t|
      t.belongs_to :lesson, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
