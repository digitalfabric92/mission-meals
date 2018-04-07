class AddReferencesToLunches < ActiveRecord::Migration[5.1]
  def change
    add_reference :lunches, :ingredients, index:true, foreign_key: true
  end
end
