class Cat
  def initialize (cat_name, preferred_food, meal_time)
    @name = cat_name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

# READERS
  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end


# Instances of the class
# eats_at

  def eats_at
    if meal_time <= 11
      "#{meal_time + 1}AM"
    elsif meal_time > 12
      "#{meal_time - 11}PM"
    else
      "Please put a number "
    end
  end

  def meow
    "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
  end

end


# meal time





# cat = Cats.new
bubbles = Cat.new("Bubbles", "potatoes", 4)
fergie = Cat.new("Fergie", "fish", 14)

puts bubbles.meal_time
puts fergie.eats_at
puts fergie.meow
puts bubbles.meow
