# class IngredientSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :id, :name
#   has_many :cocktail_ingredients
#   has_many :cocktails, through: :cocktail_ingredients
# end