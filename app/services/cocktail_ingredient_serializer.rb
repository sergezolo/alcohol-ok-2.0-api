# class CocktailIngredientSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :id, :quantity
#   belongs_to :cocktail, serializer: CocktailSerializer
#   belongs_to :ingredient, serializer: IngredientSerializer
# end
