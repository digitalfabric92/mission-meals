class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :amount
      t.date :collection_date

      t.timestamps
    end
  end
end
