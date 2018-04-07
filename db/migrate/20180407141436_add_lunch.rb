class AddLunch < ActiveRecord::Migration[5.1]
  def change
    create_table :lunches do |t|
      t.string :meal_name

      t.integer :amount_carbs
      t.integer :amount_meat
      t.integer :amount_vegetables

      t.timestamps null:false
    end
  end
end
