require 'csv'

# Destroy_all
User.destroy_all
Breakfast.destroy_all
Lunch.destroy_all
Dinner.destroy_all
DaysOfWeek.destroy_all
Stock.destroy_all
Ingredient.destroy_all

# Add Citizens to the database
citizens = "citizens.csv"

CSV.foreach(citizens) do |row|
  puts "Citizen #{row[1]} created!"
  User.create(name: row[1])
end

# Add days of the week to the database
days = "days_of_week.csv"

CSV.foreach(days) do |row|
  puts "Dow #{row[1]} created!"
  DaysOfWeek.create(carbs_ingredients_id:	row[1], meat_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_meat: row[5], amount_vegetables: row[6])
end

# Add Ingredients to the database
ingredients = "ingredients.csv"

CSV.foreach(ingredients) do |row|
  puts "Ingredients #{row[1]} created!"
  Ingredient.create(name: row[1], category: row[2], calories:	row[3], proteins:	row[4], fats:	row[5], carbs: row[6], prep_time:	row[7], preservation_time: row[8])
end

# Add dinner to the database
dinner = "dinner.csv"

CSV.foreach(dinner) do |row|
  puts "Dinner #{row[1]} created!"
  Dinner.create(carbs_ingredients_id:	row[1], fruits_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_fruits: row[5], amount_vegetables: row[6])
end

# Add lunch to the database
lunch = "lunch.csv"

CSV.foreach(lunch) do |row|
  puts "Lunch #{row[1]} created!"
  Lunch.create(carbs_ingredients_id: row[1], meat_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_meat: row[5], amount_vegetables: row[6])
end

# Add breakfast to the database
breakfast = "breakfast.csv"

CSV.foreach(breakfast) do |row|
  puts "Breakfast #{row[1]} created!"
  Breakfast.create(carbs_ingredients_id: row[1], fruits_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_fruits: row[5], amount_vegetables: row[6])
end

# Add stock to the database
stock = "stock.csv"

CSV.foreach(stock) do |row|
  puts "Stock #{row[1]} created!"
  Stock.create(id_ingredient: row[1],	amount:	row[2], collection_date: row[3])
end
