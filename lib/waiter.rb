class Waiter
    @@all = []

    def initialize(name, years)
        @name = name
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal (customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal.waiter == self}
    end

    def best_tipper
        arr = self.meals.map{|meal| meal.tip} 
        arr_max = arr.max 
        best_meal = self.meals.find{|meal| meal.tip == arr_max}
        best_meal.customer

        # best_tipped_meal = meals.max do |meal_a, meal_b|
        #     meal_a.tip <=> meal_b.tip
        #   end
        
        #   best_tipped_meal.customer
    end

end