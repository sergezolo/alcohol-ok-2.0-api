class CocktailIngredientsController < ApplicationController
    before_action :set_cocktail_ingredient, only: [:show, :update, :destroy]

    def index
        @cocktail_ingredients = @cocktail.cocktail_ingredients
        render json: CocktailIngredientsSerializer.new(cocktail_ingredients)
    end

    def create 
        ingredient = Ingredient.find_or_create(name: params[:name])
        cocktail_ingredient = @cocktail.cocktail_ingredients.new(ingredient_id: ingredient.id)
        if cocktail_ingredient.save
            render json: CocktailIngredientsSerializer.new(cocktail_ingredients), status: :created, location: cocktail_ingredients
        else
            render json: cocktail_ingredients.errors, status: :unprocessable_entity
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


# class CocktailIngredientsController < ApplicationController
#     before_action :set_cocktail_ingredient, only: [:show, :update, :destroy]
  
#     # GET /cocktail_ingredients
#     def index
#       @cocktail_ingredients = CocktailIngredient.all
  
#       render json: @cocktail_ingredients
#     end
  
#     # GET /cocktail_ingredients/1
#     def show
#       render json: @cocktail_ingredient
#     end
  
#     # POST /cocktail_ingredients
#     def create
#       @cocktail_ingredient = CocktailIngredient.new(cocktail_ingredient_params)
  
#       if @cocktail_ingredient.save
#         render json: @cocktail_ingredient, status: :created, location: @cocktail_ingredient
#       else
#         render json: @cocktail_ingredient.errors, status: :unprocessable_entity
#       end
#     end
  
#     # PATCH/PUT /cocktail_ingredients/1
#     def update
#       if @cocktail_ingredient.update(cocktail_ingredient_params)
#         render json: @cocktail_ingredient
#       else
#         render json: @cocktail_ingredient.errors, status: :unprocessable_entity
#       end
#     end
  
#     # DELETE /cocktail_ingredients/1
#     def destroy
#       @cocktail_ingredient.destroy
#     end
  
#     private
#       # Use callbacks to share common setup or constraints between actions.
#       def set_cocktail_ingredient
#         @cocktail_ingredient = CocktailIngredient.find(params[:id])
#       end
  
#       # Only allow a trusted parameter "white list" through.
#       def cocktail_ingredient_params
#         params.require(:cocktail_ingredient).permit(:quantity, :cocktail_id, :ingredient_id)
#       end
#   end
  