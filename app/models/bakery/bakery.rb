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
        
        all_uniq_ingredients = []
        self.desserts.each do |dessert|
            dessert.ingredients.each do |ingredient|
                if !all_uniq_ingredients.include?(ingredient)
                    all_uniq_ingredients << ingredient
                end
            end
        end
        all_uniq_ingredients
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