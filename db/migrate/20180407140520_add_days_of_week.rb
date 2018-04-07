class AddDaysOfWeek < ActiveRecord::Migration[5.1]
  def change
    create_table :days_of_week do |t|
      t.string :day
      t.integer :week_num
      t.references :users, foreign_key: true

      t.timestamps null:false
    end
  end
end
