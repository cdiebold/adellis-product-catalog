class CreateDemilitarizations < ActiveRecord::Migration[5.2]
  def change
    create_table :demilitarizations, id: false do |t|
      t.string :code, primary_key: true
      t.text :description
    end
  end
end
