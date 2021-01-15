class CocktailSerializer

  def initialize(cocktail_object)
    @cocktail = cocktail_object
  end

  def to_serialized_json
    @cocktail.to_json(:include => { 
      :cocktail_ingredients => {:only => [:id, :cocktail_id, :ingredient_id, :quantity]},
      :ingredients => {:only => [:id, :name]}
     }, :except => [:created_at, :updated_at])
  end

end