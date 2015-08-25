# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Electronics', description: 'Technical Stuff' }, { name: 'Outdoor', description: 'Expensive Stuff' }])
products = Product.create([{name: 'Iphone 7', description: 'Cool Cell Phone. Lorem ipsum dolor sit amet, 
                                                            eu pri vidisse quaerendum, aeque dissentias vis in, pri accusam atomorum at. 
                                                            No pro epicuri electram.', price: 750, category_id: 1, url: 'iphone.jpg'}, 
                            {name: 'Ipad 4', description: 'Cool Tablet. Lorem ipsum dolor sit amet, 
                                                            eu pri vidisse quaerendum, aeque dissentias vis in, pri accusam atomorum at. 
                                                            No pro epicuri electram.', price: 400, category_id: 1, url: 'ipad2.png'},
                            {name: 'Loanmoaner', description: 'Deadly. Lorem ipsum dolor sit amet, 
                                                            eu pri vidisse quaerendum, aeque dissentias vis in, pri accusam atomorum at. 
                                                            No pro epicuri electram.', price: 1500, category_id: 2, url: 'cesped.png'}])