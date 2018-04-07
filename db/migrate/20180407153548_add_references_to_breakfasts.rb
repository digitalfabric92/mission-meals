class AddReferencesToBreakfasts < ActiveRecord::Migration[5.1]
  def change
    add_reference :breakfasts, :ingredients, index:true, foreign_key: true
  end
end
