# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.find_or_create_by(name: "John")
user1 = User.find_or_create_by(name: "Paul")
user2 = User.find_or_create_by(name: "George")
user3 = User.find_or_create_by(name: "Ringo")
user4 = User.find_or_create_by(name: "Sir Martin")

ingred1 = Ingredient.find_or_create_by(name: "peanuts")
ingred2 = Ingredient.find_or_create_by(name: "jelly")
ingred3 = Ingredient.find_or_create_by(name: "sugar")
ingred4 = Ingredient.find_or_create_by(name: "apples")
ingred5 = Ingredient.find_or_create_by(name: "Cocktail Weiners")
ingred6 = Ingredient.find_or_create_by(name: "Pilsbury Crescent Rolls")
ingred7 = Ingredient.find_or_create_by(name: "Butter")
ingred8 = Ingredient.find_or_create_by(name: "Ketchup")

recipe1 = Recipe.find_or_create_by(name: "Pigs in Blanket", user_id: user.id)
recipe2 = Recipe.find_or_create_by(name: "Spam Skewers", user_id: user1.id)
recipe3 = Recipe.find_or_create_by(name: "Pork Roll", user_id: user2.id)
recipe4 = Recipe.find_or_create_by(name: "Aspic", user_id: user3.id)
recipe5 = Recipe.find_or_create_by(name: "Veggie Lasagna", user_id: user4.id)

ingrec1 = RecipeIngredient.find_or_create_by(recipe_id: recipe1.id, ingredient_id: ingred5.id)
ingrec2 = RecipeIngredient.find_or_create_by(recipe_id: recipe1.id, ingredient_id: ingred6.id)
ingrec3 = RecipeIngredient.find_or_create_by(recipe_id: recipe1.id, ingredient_id: ingred7.id)
ingrec4 = RecipeIngredient.find_or_create_by(recipe_id: recipe1.id, ingredient_id: ingred8.id)
ingrec5 = RecipeIngredient.find_or_create_by(recipe_id: recipe3.id, ingredient_id: ingred5.id)
