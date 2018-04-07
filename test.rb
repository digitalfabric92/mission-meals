require 'csv'

filepath = "./test.csv"

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]}"
end
