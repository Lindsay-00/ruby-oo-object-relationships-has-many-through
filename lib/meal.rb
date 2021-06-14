class Meal
    attr_reader :waiter, :customer, :tip
    @@all 

    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

end