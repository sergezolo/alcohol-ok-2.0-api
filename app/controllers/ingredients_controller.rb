class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all 
        render json: IngredientSerializer.new(@ingredients).to_serialized_json
    end

    def show
        @ingredient = Ingredient.find(params[:id])
        render json: IngredientSerializer.new(@ingredient).to_serialized_json
    end

end
