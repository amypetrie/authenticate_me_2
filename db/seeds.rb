# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Amy", email: "amy@gmail.com", password: "wow")
User.create(name: "Bruce", email: "bruce@gmail.com", password: "cool")
User.create(name: "Linda", email: "linda@gmail.com", password: "yes")
