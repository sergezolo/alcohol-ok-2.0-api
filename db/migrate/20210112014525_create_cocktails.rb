class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.string :img_url

      t.timestamps
    end
  end
end
