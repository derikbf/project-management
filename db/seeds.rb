# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "user@user.com",
  password: "User123", 
  password_confirmation: "User123"
)

puts "##########################"
  puts "USER DEFAULT"
  puts "Email: user@user.com"
  puts "Password: User123"
puts "##########################"

Project.create!([
  { name: "Project Number One", description: "Project", user_id: 1 },
  { name: "Project Number Two", description: "Project", user_id: 1 },
  { name: "Project Number Three", description: "Project", user_id: 1 }
])

puts "PROJECTS CREATED"
puts "##########################"

30.times do |i|
  Task.create!(
    name: "Task number 10.000.00#{i}",
    description: "Description number 15.000.00#{i}",
    status: ['not-started', 'in-progress', 'complete'].sample,
    project_id: rand(1..3)
  )
end

puts "TASKS CREATED"
puts "##########################"