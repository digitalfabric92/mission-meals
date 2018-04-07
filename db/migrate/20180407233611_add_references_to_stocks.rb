class AddReferencesToStocks < ActiveRecord::Migration[5.1]
  def change
    add_reference :stocks, :ingredients, index:true, foreign_key: true
  end
end
