class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all 
        render json: IngredientSerializer.new(@ingredients).to_serialized_json
    end

end
