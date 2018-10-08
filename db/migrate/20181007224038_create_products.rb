class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, id: false do |t|
      t.string :nsn, primary_key: true
      t.string :part_number
      t.string :name

      t.timestamps
    end
  end
end
