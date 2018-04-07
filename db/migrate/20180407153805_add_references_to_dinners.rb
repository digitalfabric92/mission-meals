class AddReferencesToDinners < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :dinners, :ingredients, column: :carbs_ingredients_id, primary_key: "id"
    add_foreign_key :dinners, :ingredients, column: :fruits_ingredients_id, primary_key: "id"
    add_foreign_key :dinners, :ingredients, column: :vegetables_ingredients_id, primary_key: "id"
  end
end
