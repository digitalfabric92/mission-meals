require 'csv'

# Destroy_all
Citizen.destroy_all
Breakfast.destroy_all
Lunch.destroy_all
Dinner.destroy_all
Day.destroy_all
Stock.destroy_all
Ingredient.destroy_all

Citizen.delete_all
Breakfast.delete_all
Lunch.delete_all
Dinner.delete_all
Day.delete_all
Stock.delete_all
Ingredient.delete_all

Citizen.reset_pk_sequence
Breakfast.reset_pk_sequence
Lunch.reset_pk_sequence
Dinner.reset_pk_sequence
Day.reset_pk_sequence
Stock.reset_pk_sequence
Ingredient.reset_pk_sequence


# Add Citizens to the database
csv_text_citizens = File.read(Rails.root.join('lib', 'seeds', 'citizens.csv'))
csv_citizens = CSV.parse(csv_text_citizens, :encoding => 'ISO-8859-1')

csv_citizens.each do |row|
  puts "Citizen #{row[1]} created!"
  Citizen.create(name: row[1])
end

# Add Ingredients to the database
csv_text_ingredients = File.read(Rails.root.join('lib', 'seeds', 'ingredients.csv'))
csv_ingredients = CSV.parse(csv_text_ingredients, :encoding => 'ISO-8859-1')

csv_ingredients.each do |row|
  puts "Ingredients #{row[1]} created!"
  Ingredient.create(name: row[1], category: row[2], calories:	row[3], proteins:	row[4], fats:	row[5], carbs: row[6], prep_time:	row[7], preservation_time: row[8])
end

# Add dinner to the database
csv_text_dinner = File.read(Rails.root.join('lib', 'seeds', 'dinner.csv'))
csv_dinner = CSV.parse(csv_text_dinner, :encoding => 'ISO-8859-1')

csv_dinner.each do |row|
  puts "Dinner #{row[1]} created!"
  Dinner.create(carbs_ingredients_id:	row[1], fruits_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_fruits: row[5], amount_vegetables: row[6], meal_name: row[7], image_url: row[8])
end

# Add lunch to the database
csv_text_lunch = File.read(Rails.root.join('lib', 'seeds', 'lunch.csv'))
csv_lunch = CSV.parse(csv_text_lunch, :encoding => 'ISO-8859-1')

csv_lunch.each do |row|
  puts "Lunch #{row[1]} created!"
  Lunch.create(carbs_ingredients_id: row[1], meat_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_meat: row[5], amount_vegetables: row[6], meal_name: row[7], image_url: row[8])
end

# Add breakfast to the database
csv_text_breakfast = File.read(Rails.root.join('lib', 'seeds', 'breakfast.csv'))
csv_breakfast = CSV.parse(csv_text_breakfast, :encoding => 'ISO-8859-1')

csv_breakfast.each do |row|
  puts "Breakfast #{row[1]} created!"
  Breakfast.create(carbs_ingredients_id: row[1], fruits_ingredients_id: row[2], vegetables_ingredients_id: row[3], amount_carbs: row[4], amount_fruits: row[5], amount_vegetables: row[6], meal_name: row[7], image_url: row[8])
end

# Add days of the week to the database
csv_text_days = File.read(Rails.root.join('lib', 'seeds', 'days_of_week.csv'))
csv_days = CSV.parse(csv_text_days, :encoding => 'ISO-8859-1')

csv_days.each do |row|
  puts "Dow #{row[1]} created!"
  Day.create(citizens_id:	row[1], lunches_id: row[2], dinners_id: row[3], breakfasts_id: row[4], day: row[5], week_num: row[6])
end

# Stock not used for dynamic charts
# # Add stock to the database
# csv_text_stock = File.read(Rails.root.join('lib', 'seeds', 'stock.csv'))
# csv_stock = CSV.parse(csv_text_stock, :encoding => 'ISO-8859-1')
#
# csv_stock.each do |row|
#   puts "Stock #{row[1]} created!"
#   Stock.create(ingredients_id: row[1],	amount:	row[2], collection_date: row[3])
# end
