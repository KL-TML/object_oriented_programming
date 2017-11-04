class Player

  def initialize(name)
    @name = name
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end


  # READERS

  def name
    @name
  end

  def lives
    @lives
  end

  def gold_coins
    @gold_coins
  end

  def health_points
    @health_points
  end




  # creating instance methods

  def level_up()
    @lives += 1
  end


  def collect_treasure
    @gold_coins += 1
    unless gold_coins == 0
      if gold_coins % 10 == 0
        level_up
      end
    end
  end

  def do_battle(damage)
    @health_points -= damage

    if @health_points < 1
      lives -= 1
      @health_points = 10
    end

    if lives == 0
      restart
      puts "#{name} is dead"
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 10
    puts "#{@name} is back in the game"
  end

  def playerstats
    puts lives
    puts gold_coins
    puts health_points
  end

end

mario = Player.new("Mario")

puts mario.gold_coins
