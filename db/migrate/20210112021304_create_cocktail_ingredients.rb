class CreateCocktailIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktail_ingredients do |t|
      t.integer :cocktail_id, null: false
      t.integer :ingredient_id, null: false
      t.string :quantity

      t.timestamps
    end
  end
end
