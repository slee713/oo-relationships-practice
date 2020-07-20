require_relative "./dessert.rb"

class Ingredient
    attr_reader :name, :calories

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def dessert
        self_dessert = DessertIngredients.all.find_all do |dessertingredient|
            dessertingredient.ingredient == self
        end
        self_dessert.map do |item|
            item.dessert
        end
    end

    def bakeries
        self.dessert.map do |dessert|
            dessert.bakery
        end.uniq
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        ingredient_names = Ingredient.all.map do |a_ingredient|
            a_ingredient.name.downcase
        end
        ingredient_names.find_all do |name|
            name.include?(ingredient.downcase)
        end 
    end

end
