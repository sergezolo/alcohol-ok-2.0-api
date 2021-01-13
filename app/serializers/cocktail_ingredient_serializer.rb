class CocktailIngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
  belongs_to :cocktail
  belongs_to :ingredient
end
