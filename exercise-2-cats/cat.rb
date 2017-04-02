class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time == (1..11)
      puts "#{@meal_time} AM"

    elsif @meal_time == 12
      puts "#{@meal_time} PM"

    else @meal_time == (13..24)
      puts "#{ (@meal_time) - 12 } PM"
    end
  end

  def meow
    puts "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
  end
  
end

# irb notes

=begin

Lola = Cat.new("Lola","wet food",22)
Oreo = Cat.new("Oreo","snack",11)

=end
