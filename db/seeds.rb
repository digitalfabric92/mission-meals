require 'csv'

User.destroy_all

# Add Citizens to the database

citizens = "./citizen.csv"

CSV.foreach(citizens) do |row|
  puts "Citizen #{row[0]} created!"
  User.create(name: row[0])
end

# Add Ingredients to the database

