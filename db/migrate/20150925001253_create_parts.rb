class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :quantity
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
