class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :password_digest
      t.string :cell_phone
      t.integer :balance
      t.recovery :string
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
