# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

(1..20).each do |n|
  width =  rand(5 + 10)
  height =  rand(5 + 10)
  mines = rand(3 + 10)
  puts "n: #{n} | width: #{width} | height: #{height} | mines: #{mines} |"
  Board.create!(name: "Mines #{n}", email: "Test#{n}@asdasd.com", width: width, height: height, mines: mines)
end
