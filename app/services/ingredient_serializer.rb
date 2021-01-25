class IngredientSerializer

  def initialize(ingredient_object)
    @ingredient = ingredient_object
  end
  
  def to_serialized_json
    @ingredient.to_json(:include => { 
      :cocktail_ingredients => {:only => [:id, :cocktail_id, :ingredient_id, :quantity]},
      :cocktails => {:only => [:id, :name, :description, :img_url, :instructions]}
    }, :except => [:created_at, :updated_at])
  end
  
end