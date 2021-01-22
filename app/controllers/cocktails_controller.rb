class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show, :update, :destroy]

    def index
        @cocktails = Cocktail.all
        render json: CocktailSerializer.new(@cocktails).to_serialized_json
    end

    def create
          binding.pry
        @cocktail = Cocktail.new(cocktail_params)
        @cocktail.img_url = params[:imgUrl]
        ingredients = params[:ingredients]
      
        ingredients.each do |ingredient|
            ingredient = Ingredient.find_or_create_by(name: ingredient[:name])
            cocktail_ingredient = @cocktail.cocktail_ingredients.new
            cocktail_ingredient.ingredient_id = ingredient.id
            cocktail_ingredient.quantity = ingredient[:quantity]
        end
        #binding.pry
        @cocktail = Cocktail.new(cocktail_params)
        @cocktail.ingredients = Ingredient.find_or_create()
        @cocktail.cocktail_ingredients = CocktailIngredient.new()
 
        if cocktail.save
            render json: CocktailSerializer.new(@cocktail).to_serialized_json, status: :created, location: cocktail
        else
            render json: @cocktail.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: CocktailSerializer.new(@cocktail).to_serialized_json
    end

    def update
        if @cocktail.update(cocktail_params)
            render json: CocktailSerializer.new(@cocktail).to_serialized_json
        else
            render json: @cocktail.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @cocktail.destroy
    end

    private

    def set_cocktail
        @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(
            :name, 
            :description,
            :img_url,
            instructions: [],
            ingredients: [:name, :quantity],
        ).tap do |whitelisted|
            whitelisted[:ingredients] = params[:cocktail][:ingredients]
        end
    end

end