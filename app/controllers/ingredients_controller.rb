class IngredientsController < ApplicationController
    before_action :set_ingredient, only: [:show, :update, :destroy]

    def index
        @ingredients = Ingredient.all 
        render json: @ingredients
    end

    def create
        @ingredient = Ingredient.build(ingredient_params)
        if @ingredient.save
            render json: @ingredient, status: :created, location: @ingredient
        else
            render json: @ingredient.errors, status: :unprocessable_entity
        end
    end
    
    def show
        render json: @ingredient
    end

    def update
        if @ingredient.update(ingredient_params)
            render json: @ingredient
        else
            render json: @ingredient.errors, status: :unprocessable_entity
        end
    end

    private

    def set_ingredient
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end

end