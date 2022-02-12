class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :style
      t.integer :frequency_count
      t.integer :frequency_interval
      t.string :metric_name
      t.string :metric_goal
      t.date :end_date
      t.boolean :public
      t.integer :frequency_slack
      t.text :message_to_self
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
