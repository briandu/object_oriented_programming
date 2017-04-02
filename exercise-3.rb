class Player

  attr_accessor :gold_coins, :health_points, :lives

  def initialize (gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives = @lives + 1
    puts "Congratulations! You leveled up!"
  end

  def collect_treasure
    @gold_coins = @gold_coins + 1
      if @gold_coins % 10 == 0
        level_up
        puts "Excellent! You recieved gold coins and leveled up!"
      else
        puts "Woah! You received some gold coins."
      end
    puts @gold_coins
  end

  def do_battle
    @health_points = @health_points - 1
      if @health_points <= 1
        @lives = @lives - 1
        @health_points = @health_points + 10
        puts "You died. You are being revived!"
          if @lives <= 1
            puts "You lost all your lives. Game will restart"
            restart
          end
      else
        puts "You took 1 damage from the battle."
      end
  end

  def restart
    @gold_coins = 0
    @health_points = 0
    @lives = @lives + 5
    @health_points = @health_points + 10
  end
end

=begin

# irb notes

player = Player.new(0,10,5)

player = Player.new(20,1,3)

player = Player.new(10,1,1)

=end
