class AddReferencesToDinners < ActiveRecord::Migration[5.1]
  def change
    add_reference :dinners, :ingredients, index:true, foreign_key: true
  end
end
