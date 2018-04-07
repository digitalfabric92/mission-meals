class AddReferencesToDow < ActiveRecord::Migration[5.1]
  def change
    add_reference :days_of_week, :breakfasts, index:true, foreign_key: true
    add_reference :days_of_week, :lunches, index:true, foreign_key: true
    add_reference :days_of_week, :dinners, index:true, foreign_key: true
  end
end
