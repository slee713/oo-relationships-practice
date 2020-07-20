require_relative "./DessertIngredients.rb"

class Dessert
    attr_reader :name
    attr_accessor :bakery

    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def new_dessert_ingredient(ingredients)
        DessertIngredients.new(self,ingredients)     
    end

    def ingredients
        all_pairs =DessertIngredients.all.find_all do |dessertingredient|
            dessertingredient.dessert == self
        end
        all_pairs.map do |pair|
            pair.ingredient
        end
    end

    def calories
        calories = self.ingredients.map do |ingredient|
            ingredient.calories.to_f
        end
        calories.sum
    end

    def self.all
        @@all
    end

end