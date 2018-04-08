class AddLunch < ActiveRecord::Migration[5.1]
  def change
    create_table :lunches do |t|
      t.string :meal_name
      t.integer :carbs_ingredients_id
      t.integer :meat_ingredients_id
      t.integer :vegetables_ingredients_id
      t.integer :amount_carbs
      t.integer :amount_meat
      t.integer :amount_vegetables
      t.string :image_url

      t.timestamps null:false
    end
  end
end
