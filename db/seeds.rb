puts "🌱 Seeding  ..."


users = []
5.times do
  new_user = User.create(
    full_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

  users << new_user
end

puts "users seeded"


projects = []
100.times do
  new_project = Project.create(
    name: Faker::Company.name,
    details: Faker::Lorem.paragraph,
    user_id: users.sample.id
  )

  projects << new_project
end

puts "done seeding projects"

puts "✅ Done seeding!"
