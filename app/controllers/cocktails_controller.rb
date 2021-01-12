class CocktailsController < ApplicationController
    before_action :find_cocktail, only: [:show, :update, :destroy]

    def index
        cocktails = Cocktail.all
        render json: CocktailSerializer.new(cocktails).to_serialized_json
    end

    def create
        cocktail = Cocktail.new(cocktail_params)
        if cocktail.save
            render json: CocktailSerializer.new(cocktail).to_serialized_json, status: :created
        else
            render json: {error: cocktail.errors.full_messages}, status: :not_acceptable
        end
    end

    def show
        render json: CocktailSerializer.new(@cocktail).to_serialized_json
    end

    def update
        if @cocktail.update(cocktail_params)
            render json: CocktailSerializer.new(@cocktail).to_serialized_json, status: :updated 
        else
            render json: {error: cocktail.errors.full_messages}
        end
    end

    def destroy
        Cocktail.delete(@cocktail)
        render json: CocktailSerializer.new(@cocktail).to_serialized_json, status: :accepted
    end

    private

    def find_cocktail
        @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(
            :name, 
            :description,
            :img_url,
            :instructions,
            :cocktail_ingredients_attributes => [
                :id,
                :quantity,
                :ingredient_attributes => [
                    :name
                ]
            ]
        )

end
