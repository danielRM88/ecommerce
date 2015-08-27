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
                                                            No pro epicuri electram. Macaroon muffin lollipop topping oat cake chocolate bar cheesecake. 
                                                            Pastry gingerbread danish pastry soufflé fruitcake tootsie roll. Oat cake cheesecake macaroon cookie. 
                                                            Oat cake macaroon icing. Chocolate cake ice cream donut dragée jujubes macaroon candy canes bear claw. 
                                                            Lollipop jelly-o pastry brownie dessert candy canes. Donut apple pie cake pudding chocolate bar gummies 
                                                            dragée pie sweet roll. Cotton candy sugar plum caramels tart halvah brownie cake candy canes lollipop. 
                                                            Macaroon chupa chups marzipan macaroon. Marshmallow pastry dragée croissant chocolate cake lollipop. 
                                                            Jujubes toffee bear claw cheesecake gummies cupcake jelly beans jujubes. Pie marzipan icing macaroon 
                                                            cake tiramisu gummi bears bear claw. Dessert topping bonbon jelly dessert halvah bonbon. 
                                                            Dragée marzipan lemon drops tart candy canes. Fruitcake candy canes pastry. 
                                                            Icing lollipop soufflé lemon drops chupa chups. Tart cookie ice cream cake jelly 
                                                            cotton candy fruitcake bear claw biscuit. Dragée toffee cookie jelly candy. 
                                                            Powder brownie tart macaroon danish carrot cake lemon drops. Caramels halvah cake. 
                                                            Cheesecake biscuit powder chocolate. Liquorice wafer cupcake pudding biscuit brownie 
                                                            muffin cookie jelly beans. Jelly-o danish sweet ice cream ice cream. Cotton candy 
                                                            gummies pastry carrot cake candy canes. Donut sweet roll liquorice gummi bears cake. 
                                                            Cake soufflé chupa chups bonbon. Cotton candy sweet croissant cookie cake tootsie roll 
                                                            pudding ice cream.', price: 750, category_id: 1, url: 'iphone.jpg'}, 
                            {name: 'Ipad 4', description: 'Cool Tablet. Lorem ipsum dolor sit amet, 
                                                            eu pri vidisse quaerendum, aeque dissentias vis in, pri accusam atomorum at. 
                                                            No pro epicuri electram. Chocolate cake ice cream donut dragée jujubes macaroon candy canes bear claw. 
                                                            Lollipop jelly-o pastry brownie dessert candy canes. Donut apple pie cake pudding chocolate bar gummies 
                                                            dragée pie sweet roll. Cotton candy sugar plum caramels tart halvah brownie cake candy canes lollipop. 
                                                            Macaroon chupa chups marzipan macaroon. Marshmallow pastry dragée croissant chocolate cake lollipop. 
                                                            Jujubes toffee bear claw cheesecake gummies cupcake jelly beans jujubes. Pie marzipan icing macaroon 
                                                            cake tiramisu gummi bears bear claw. Dessert topping bonbon jelly dessert halvah bonbon. 
                                                            Dragée marzipan lemon drops tart candy canes. Fruitcake candy canes pastry. 
                                                            Icing lollipop soufflé lemon drops chupa chups. Tart cookie ice cream cake jelly 
                                                            cotton candy fruitcake bear claw biscuit. Dragée toffee cookie jelly candy. 
                                                            Powder brownie tart macaroon danish carrot cake lemon drops. Caramels halvah cake. 
                                                            Cheesecake biscuit powder chocolate. Liquorice wafer cupcake pudding biscuit brownie 
                                                            muffin cookie jelly beans. Jelly-o danish sweet ice cream ice cream. Cotton candy 
                                                            gummies pastry carrot cake candy canes. Donut sweet roll liquorice gummi bears cake.', price: 450, category_id: 1, url: 'ipad2.png'},
                            {name: 'Loanmoaner', description: 'Deadly. Lorem ipsum dolor sit amet, 
                                                            Cake soufflé chupa chups bonbon. Cotton candy sweet croissant cookie cake tootsie roll 
                                                            eu pri vidisse quaerendum, aeque dissentias vis in, pri accusam atomorum at. 
                                                            No pro epicuri electram. Chocolate cake ice cream donut dragée jujubes macaroon candy canes bear claw. 
                                                            Lollipop jelly-o pastry brownie dessert candy canes. Donut apple pie cake pudding chocolate bar gummies 
                                                            dragée pie sweet roll. Cotton candy sugar plum caramels tart halvah brownie cake candy canes lollipop. 
                                                            Macaroon chupa chups marzipan macaroon. Marshmallow pastry dragée croissant chocolate cake lollipop. 
                                                            Jujubes toffee bear claw cheesecake gummies cupcake jelly beans jujubes. Pie marzipan icing macaroon 
                                                            cake tiramisu gummi bears bear claw. Dessert topping bonbon jelly dessert halvah bonbon. 
                                                            Dragée marzipan lemon drops tart candy canes. Fruitcake candy canes pastry. 
                                                            Icing lollipop soufflé lemon drops chupa chups. Tart cookie ice cream cake jelly 
                                                            cotton candy fruitcake bear claw biscuit. Dragée toffee cookie jelly candy. 
                                                            Powder brownie tart macaroon danish carrot cake lemon drops. Caramels halvah cake. 
                                                            Cheesecake biscuit powder chocolate. Liquorice wafer cupcake pudding biscuit brownie 
                                                            muffin cookie jelly beans. Jelly-o danish sweet ice cream ice cream. Cotton candy 
                                                            gummies pastry carrot cake candy canes. Donut sweet roll liquorice gummi bears cake. 
                                                            Cake soufflé chupa chups bonbon. Cotton candy sweet croissant cookie cake tootsie roll', price: 1500, category_id: 2, url: 'cesped.png'}])