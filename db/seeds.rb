# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized)

ingredients = drinks["drinks"]
ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

url = 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Ordinary_Drink'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized)

cocktails = drinks["drinks"]
cocktails.each do |cocktail|

Cocktail.create(name: cocktail["strDrink"])

#   tata = Cocktail.create(name: cocktail["strDrink"])
#   cocktail_id = cocktail["idDrink"]
#   url = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=#{cocktail_id}"
#   drink_serialized = open(url).read
#   drink = JSON.parse(drink_serialized)
#   data = drink["drinks"].first
#   ingredients_with_blank = data.select! { |k, v| k.include? "strIngredient" }
#   ingredients = ingredients_with_blank.reject! { |k, v| v.blank? }

#   ingredients
#   ingredients.each do |k, ingredient|
#     toto = Ingredient.find_by(name: ingredient)
#     if toto.present?
#       dose = Dose.new
#       dose.ingredient = toto
#       dose.cocktail = tata
#       dose.description = "toto"
#       # p dose.valid?
#       # p dose.errors.messages
#       dose.save
#     end
#   end
# end

# # export { fetchMovies };
