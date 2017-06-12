# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.create(order_number: "ABC123", email: "joe@bloggs.com", description: "the nude - high - dark - size 12-14")
Order.create(order_number: "DEF456", email: "joe@bloggs.com", description: "the thirty - low - jet black - size 10")
Order.create(order_number: "GHI789", email: "joe@bloggs.com", description: "the fifty - high - fig - size 4")
Order.create(order_number: "JKL123", email: "joe@bloggs.com", description: "the eighty - low - size 12-14")

