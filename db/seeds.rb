User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

categorys = ["main","drink","dessert"]
10.times do |m|
  name = Faker::Food.dish
  price = Faker::Number.within(range: 500..3000)
  calorie = Faker::Number.within(range: 100..1100)
  category = categorys.sample
  coment = Faker::Food.description
  Menu.create!(name: name,
              price: price,
              calorie: calorie,
              category: category,
              coment: coment)
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
