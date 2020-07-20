require 'pry'
require_relative "./models/bakery.rb"
require_relative "./models/DessertIngredients.rb"
require_relative "./models/dessert.rb"
require_relative "./models/ingredients.rb"


moms_bakery = Bakery.new("Mom's Bakery")
pops = Bakery.new("Pop's Baker")
sisters = Bakery.new("Sister's Bakery")

fruit_cake = Dessert.new("fruit cake")
apple_pie = Dessert.new("apple pie")
choc_cookie = Dessert.new("Chocolate Cookies")
cheese_cake = Dessert.new("Cheesecake")

choc_cookie.bakery = pops
cheese_cake.bakery = sisters
fruit_cake.bakery = moms_bakery
apple_pie.bakery = moms_bakery

chocolate = Ingredient.new("Chocolate", 300)
flour = Ingredient.new("flour", 50)
sugar = Ingredient.new("sugar", 700)
cheese = Ingredient.new("cheese", 1000)
chocolate_mousse = Ingredient.new("Chocolate mousse", 200)
apples = Ingredient.new("Apples", 400)

choc_cookie.new_dessert_ingredient(chocolate)
choc_cookie.new_dessert_ingredient(flour)
choc_cookie.new_dessert_ingredient(sugar)

fruit_cake.new_dessert_ingredient(flour)
fruit_cake.new_dessert_ingredient(sugar)

apple_pie.new_dessert_ingredient(flour)
apple_pie.new_dessert_ingredient(sugar)
apple_pie.new_dessert_ingredient(apples)
cheese_cake.new_dessert_ingredient(cheese)

choc_cookie.bakery = pops # chocolate chip cookie (instance of Dessert) assigning the bakery to pops
fruit_cake.bakery = moms_bakery
apple_pie.bakery = moms_bakery


# print moms_bakery.ingredients
# print moms_bakery.desserts 
# print moms_bakery.average_calories
# print Bakery.all
# print moms_bakery.shopping_list


# print choc_cookie.ingredients
# print choc_cookie.bakery.name
# print choc_cookie.calories 
# print Dessert.all


# print flour.dessert
# print flour.bakeries
# print flour.calories
print Ingredient.all