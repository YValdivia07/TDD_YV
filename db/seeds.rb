# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating tables"
Array((1..10)).each do |table|
  Table.create(
    {
      number: table
    }
  )
end

puts "Creating Meals"
dishes = %w[porotos arroz tallarines pollo chapsui pizza lasagna curanto cancato salmón]
dishes.each do |meal|
  Meal.create(
    {
      name: meal
    }
  )
end

puts "Creating Checks"
10.times do
  Check.create(
    {
      tables_id: rand(9) + 1,
      meals_id: rand(9) + 1
    }
  )
end