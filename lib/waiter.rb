class Waiter
  attr_accessor :name, :exp

  @@all = []

  def initialize(name, exp)
    @name = name
    @exp = exp
    @@all << self
  end

  def self.all
    @@all
  end

  def meals
    Meal.all.select {|meal|
      meal.waiter == self
    }
  end

  def best_tipper
    meal = Meal.all.max {|meal|
      meal.tip
    }
    puts "The best tip is $#{meal.tip}."
    puts "The best tipper is #{meal.customer.name}."
    best_tipped_meal = Meal.all.select {|meal|
    }


  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

end
