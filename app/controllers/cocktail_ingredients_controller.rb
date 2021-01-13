class CocktailIngredientsController < ApplicationController
    before_action :set_cocktail

    def index
        cocktail_ingredients = @cocktail.cocktail_ingredients
        render json: CocktailIngredientsSerializer.new(cocktail_ingredients)
    end

    def create 
        ingredient = Ingredient.find_or_create(name: params[:name])
        cocktail_ingredient = @cocktail.cocktail_ingredients.new(ingredient_id: ingredient.id)
        if cocktail_ingredient.save
            render json: CocktailIngredientsSerializer.new(cocktail_ingredients), status: :created, location: cocktail_ingredients
        else
            render json: {error: cocktail_ingredients.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        ingredient = Ingredient.find_by_id(params[:ingredient_id])
        cocktail_ingredient = @cocktail.cocktail_ingredients.find_by_id(ingredient_id: ingredient.id)
        cocktail_ingredient.destroy
        render json: :accepted
    end

    private

    def set_cocktail
        @cocktail = Cocktail.find_by_id(params[:cocktail_id])
    end

end
