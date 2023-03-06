puts "🌱 Seeding  ..."


# Seed data for users
User.create(full_name: 'John Doe', email: 'john.doe@example.com')
User.create(full_name: 'Jane Smith', email: 'jane.smith@example.com')
User.create(full_name: 'Bob Johnson', email: 'bob.johnson@example.com')
User.create(full_name: 'Alice Lee', email: 'alice.lee@example.com')
User.create(full_name: 'Tom Wilson', email: 'tom.wilson@example.com')

 


puts "users seeded"



Project.create(name: 'Project A', details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', user_id: 1)
Project.create(name: 'Project B', details: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', user_id: 2)
Project.create(name: 'Project C', details: 'Eiusmod tempor incididunt ut labore et dolore magna aliqua', user_id: 1)
Project.create(name: 'Project D', details: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', user_id: 3)
Project.create(name: 'Project E', details: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore', user_id: 2)
Project.create(name: 'Project F', details: 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim', user_id: 5)
Project.create(name: 'Project G', details: 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', user_id: 3)
Project.create(name: 'Project H', details: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', user_id: 1)
Project.create(name: 'Project I', details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', user_id: 4)
Project.create(name: 'Project J', details: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', user_id: 5)

  


puts "done seeding projects"

puts "✅ Done seeding!"
