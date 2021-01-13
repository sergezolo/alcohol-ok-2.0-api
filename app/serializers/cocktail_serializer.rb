class CocktailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :instructions, :img_url
  has_many :cocktail_ingredients
  has_many :ingredients, through: :cocktail_ingredients
end
