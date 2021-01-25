class Cocktail < ApplicationRecord
    serialize :instructions, Array
    before_save {self.name.upcase!}
    validates :name, :instructions, presence: true
    has_many :cocktail_ingredients, dependent: :destroy
    has_many :ingredients, through: :cocktail_ingredients
    accepts_nested_attributes_for :cocktail_ingredients, allow_destroy: true    
end
