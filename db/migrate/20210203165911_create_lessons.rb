class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.integer :price
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
