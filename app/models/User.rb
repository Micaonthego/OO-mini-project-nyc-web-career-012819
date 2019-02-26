# user has many recipes thru recipecards
class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def top_three_recipes
    top_r = recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end
    # binding.pry
    [top_r[-1], top_r[-2], top_r[-3]]
  end

  def most_recent_recipe
    recipe_cards.sort_by do |recipe_card|
      recipe_card.date
    end.last
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergen_helper
    # binding.pry
  Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def allergens
    allergen_helper.map do |allergen|
      allergen.ingredient
    end
  end

  def safe_recipes
    
  end

end
