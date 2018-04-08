class AddReferencesToDays < ActiveRecord::Migration[5.1]
  def change
    add_reference :days, :citizens, index:true, foreign_key: true
    add_reference :days, :breakfasts, index:true, foreign_key: true
    add_reference :days, :lunches, index:true, foreign_key: true
    add_reference :days, :dinners, index:true, foreign_key: true
  end
end
