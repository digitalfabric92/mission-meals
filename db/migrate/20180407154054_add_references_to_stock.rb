class AddReferencesToStock < ActiveRecord::Migration[5.1]
  def change
    add_reference :stock, :ingredients, index:true, foreign_key: true
  end
end
