class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :company
      t.string :part_number
      t.string :nsn
      t.string :quantity
      t.string :condition
      t.string :priority

      t.timestamps
    end
  end
end
