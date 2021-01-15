class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show, :update, :destroy]

    def index
        @cocktails = Cocktail.all
        render json: CocktailSerializer.new(@cocktails).to_serialized_json
    end

    def create
        @cocktail = Cocktail.build(cocktail_params)
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
            :instructions,
            cocktail_ingredients: [
                :cocktail_id,
                :quantity,
                ingredient: [:id, :name]
            ]
        )
    end

end