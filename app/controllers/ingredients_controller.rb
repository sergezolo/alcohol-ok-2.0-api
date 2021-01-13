class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all 
        render json: IngredientSerializer.new(ingredients)
    end

    def show
        ingredient = Ingredient.find_by_id(params[:id])
        render json: IngredientSerializer.new(ingredient)
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end

end
