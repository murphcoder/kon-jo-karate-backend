class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.belongs_to :lesson, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.integer :cost
      t.boolean :paid

      t.timestamps
    end
  end
end
