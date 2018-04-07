class AddBreakfast < ActiveRecord::Migration[5.1]
  def change
    create_table :breakfasts do |t|
      t.string :meal_name

      t.integer :amount_carbs
      t.integer :amount_fruits
      t.integer :amount_vegetables

      t.timestamps null:false
    end
  end
end