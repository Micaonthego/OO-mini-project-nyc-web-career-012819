require 'pry'
require_relative '../config/environment.rb'

pasta = Recipe.new('pasta')
bread = Recipe.new('bread')
pizza = Recipe.new('pizza')

mica = User.new('mica')
diana = User.new('diana')

rc_pasta = RecipeCard.new('1/1', 3, mica, pasta)
rc_pizza = RecipeCard.new('1/2', 4, diana, pizza)
rc_bread = RecipeCard.new('1/3', 5, mica, bread)
rc_pasta2 = RecipeCard.new('1/4', 3, diana, pasta)
rc_pasta3 = RecipeCard.new('1/5', 2, diana, pasta)

cheese = Ingredient.new('cheese')
dough = Ingredient.new('dough')
sauce = Ingredient.new('sauce')
ham = Ingredient.new('ham')
noodles = Ingredient.new('noodles')

ri_1 = RecipeIngredient.new(cheese, pizza)
ri_2 = RecipeIngredient.new(dough, pizza)
ri_3 = RecipeIngredient.new(sauce, pizza)
ri_4 = RecipeIngredient.new(dough, bread)
ri_5 = RecipeIngredient.new(cheese, pasta)
ri_6 = RecipeIngredient.new(noodles, pasta)

a1 = Allergen.new(sauce, mica)
a2 = Allergen.new(ham, diana)
a3 = Allergen.new(noodles, mica)
a4 = Allergen.new(noodles, diana)



binding.pry
0
