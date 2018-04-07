class AddIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.integer :calories
      t.decimal :proteins, :precision => 4, :scale => 1
      t.decimal :fats, :precision => 4, :scale => 1
      t.decimal :carbs, :precision => 4, :scale => 1
      t.integer :prep_time
      t.integer :preservation_time

      t.timestamps null:false
    end
  end
end
