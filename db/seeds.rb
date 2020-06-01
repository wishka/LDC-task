# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Examples User",
            email: "examples@railstutorial.org",
            password:              "foobar",
            password_confirmation: "foobar",
            admin: false,
            activated: true,
            activated_at: Time.zone.now)

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

#Products start
product_attributes = [{
                category_id: '1',
                menu_id: '1',
                title: "Hanburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Hamburger.jpg"
                },
                {
                category_id: '1',
                menu_id: '2',
                title: "Hanburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Hamburger2.jpg"
                },
                {
                category_id: '1',
                menu_id: '3',
                title: "Hanburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Hamburger3.jpg"
                },
                {
                category_id: '1',
                menu_id: '4',
                title: "Hanburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Hamburger4.jpg"
                },
                {
                category_id: '1',
                menu_id: '5',
                title: "Hanburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Hamburger5.jpg"
                },
                {
                category_id: '1',
                menu_id: '6',
                title: "Hanburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Hamburger6.jpg"
                },
                {
                category_id: '1',
                menu_id: '7',
                title: "Cheeseburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Cheeseburger.jpg"
                },
                {
                category_id: '1',
                menu_id: '8',
                title: "Cheeseburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Cheeseburger2.jpg"
                },
                {
                category_id: '1',
                menu_id: '9',
                title: "Cheeseburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Cheeseburger3.jpg"
                },
                {
                category_id: '1',
                menu_id: '10',
                title: "Cheeseburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Cheeseburger4.jpg"
                },
                {
                category_id: '1',
                menu_id: '11',
                title: "Cheeseburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Cheeseburger5.jpg"
                },
                {
                category_id: '1',
                menu_id: '12',
                title: "Cheeseburger",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Cheeseburger6.jpg"
                },
                {
                category_id: '2',
                menu_id: '13',
                title: "Free",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Free.jpg"
                },
                {
                category_id: '2',
                menu_id: '14',
                title: "Free",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Free2.jpg"
                },
                {
                category_id: '2',
                menu_id: '15',
                title: "Free",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Free3.jpg"
                },
                {
                category_id: '2',
                menu_id: '16',
                title: "Icecreame",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Icecreame.jpg"
                },
                {
                category_id: '2',
                menu_id: '17',
                title: "Icecreame",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Icecreame2.jpg"
                },
                {
                category_id: '2',
                menu_id: '18',
                title: "Icecreame",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "Icecreame3.jpg"
                },
                {
                category_id: '2',
                menu_id: '19',
                title: "Apple pie",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "apple_pie.jpg"
                },
                {
                category_id: '3',
                menu_id: '20',
                title: "Cola",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "cola.jpg"
                },
                {
                category_id: '3',
                menu_id: '21',
                title: "Fanta",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "fants.jpg"
                },
                {
                category_id: '3',
                menu_id: '22',
                title: "Sprite",
                price: Faker::Commerce.price,
                discribe: Faker::Lorem.sentence(word_count: 10),
                path_to_image: "sprite.jpg"}]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end
