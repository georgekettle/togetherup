class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.date :date
      t.integer :quantity
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
