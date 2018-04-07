class AddReferencesToLunches < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :lunches, :ingredients, column: :carbs_ingredients_id, primary_key: "id"
    add_foreign_key :lunches, :ingredients, column: :meat_ingredients_id, primary_key: "id"
    add_foreign_key :lunches, :ingredients, column: :vegetables_ingredients_id, primary_key: "id"
  end
end
