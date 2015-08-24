# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Electronics', description: 'Technical Stuff' }, { name: 'Outdoor', description: 'Expensive Stuff' }])
products = Product.create([{name: 'Iphone 7', description: 'Cool Cell Phone', price: 750, category_id: 1, url: 'iphone.jpg'}, 
                            {name: 'Ipad 4', description: 'Cool Tablet', price: 400, category_id: 1, url: 'ipad2.png'},
                            {name: 'Loanmoaner', description: 'Deadly', price: 1500, category_id: 2, url: 'cesped.png'}])