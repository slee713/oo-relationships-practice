class Bakery

    attr_accessor :name
    @@all = []

    def initialize(bakery_name)
        @name = bakery_name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        bakery_ingredients = DessertIngredients.all.find_all do |dessertingredient|
            dessertingredient.dessert.bakery == self
        end
        bakery_ingredients.map do |dessert_ingredient|
            dessert_ingredient.ingredient
        end
        
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
       
    end

    def average_calories
        calories = self.desserts.map do |dessert|
            dessert.calories
        end
        calories.sum/calories.count.to_f 
    end

    def shopping_list
        self.ingredients.map do |ingredient|
            ingredient.name
        end.uniq.join(" ")
    end


end