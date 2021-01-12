class CreateCocktailIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktail_ingredients do |t|
      t.integer :cocktail_id
      t.integer :ingredient_id
      i.string :quantity

      t.timestamps
    end
  end
end
