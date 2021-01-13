class CocktailsController < ApplicationController
    before_action :find_cocktail, only: [:show, :update, :destroy]

    def index
        cocktails = Cocktail.all
        render json: CocktailSerializer.new(cocktails)
    end

    def create
        cocktail = Cocktail.new(cocktail_params)
        if cocktail.save
            render json: CocktailSerializer.new(cocktail), status: :created, location: cocktail
        else
            render json: {error: cocktail.errors.full_messages}
        end
    end

    def show
        render json: CocktailSerializer.new(@cocktail)
    end

    def update
        if @cocktail.update(cocktail_params)
            render json: CocktailSerializer.new(@cocktail)
        else
            render json: {error: cocktail.errors.full_messages}
        end
    end

    def destroy
        Cocktail.delete(@cocktail)
        render json: CocktailSerializer.new(@cocktail)
    end

    private

    def find_cocktail
        @cocktail = Cocktail.find_by_id(params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(
            :name, 
            :description,
            :img_url,
            :instructions,
            cocktail_ingredients: []
            # :cocktail_ingredients_attributes => [
            #     :id,
            #     :quantity,
            #     :ingredients_attributes => [
            #         :name
            #     ]
            # ]
        )
    end

end
