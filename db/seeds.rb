require 'csv'

# Destroy_all
User.destroy_all
Breakfast.destroy_all
Lunch.destroy_all
Dinner.destroy_all
Days_of_week.destroy_all
Dinner.destroy_all
Ingredient.destroy_all

# Add Citizens to the database
citizens = "./citizens.csv"

CSV.foreach(citizens) do |row|
  puts "Citizen #{row[0]} created!"
  User.create(name: row[0])
end

# Add days of the week to the database
days_of_week = "./days_of_week.csv"

CSV.foreach(days_of_week) do |row|
  puts "Dow #{row[0]} created!"
  Days_of_week.create(name: row[0])
end

# Add Ingredients to the database
ingredients = "./ingredients.csv"

CSV.foreach(ingredients) do |row|
  puts "Ingredients #{row[0]} created!"
  Ingredient.create(name: row[0])
end

# Add dinner to the database
dinner = "./dinner.csv"

CSV.foreach(dinner) do |row|
  puts "Dinner #{row[0]} created!"
  Dinner.create(name: row[0])
end

# Add lunch to the database
lunch = "lunch.csv"

CSV.foreach(lunch) do |row|
  puts "Lunch #{row[0]} created!"
  Lunch.create(name: row[0])
end

# Add breakfast to the database
breakfast = "./breakfast.csv"

CSV.foreach(breakfast) do |row|
  puts "Breakfast #{row[0]} created!"
  Breakfast.create(name: row[0])
end

# Add stock to the database
stock = "stock.csv"

CSV.foreach(stock) do |row|
  puts "Stock #{row[0]} created!"
  Stock.create(name: row[0])
end
