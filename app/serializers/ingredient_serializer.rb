class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
