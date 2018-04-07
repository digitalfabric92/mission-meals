class AddStock < ActiveRecord::Migration[5.1]
  def change
    create_table :stock do |t|
      t.integer :food_id
      t.integer :amount
      t.date :collection_date

      t.timestamps null:false
    end
  end
end
