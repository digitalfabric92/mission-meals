class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.string :day
      t.integer :week_num

      t.timestamps
    end
  end
end


