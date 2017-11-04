class Paperboy

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  # READERS OF THE INITIALIZED VARIABLES

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  # Below states all of the instance methods

  def quota
    quota = ((experience % 2) + 50) #quota is 1/2 of your experience, plus 50
    return quota
  end


  def deliver(start_address, end_address)
    num_of_houses_delivered = start_address + end_address
    deliveries = (num_of_houses_delivered.abs + 1)

    if end_address < start_address
      puts "error, please try again. Make sure the #{end_address} is a greater value than the #{start_address}"
    end

    # earnings of the Paperboy
    deliveries_made = 0 #earnings start at zero
    deliveries.times do
      if deliveries_made == deliveries
        money_earned = 0
      elsif deliveries_made >= quota
        @earnings += 0.50
        deliveries_made += 1
      else
        @earnings += 0.25
        deliveries_made +=1
      end
    end

    # Performing under the quota
    if deliveries_made < quota
      @earnings -= 2
    end

  end

  def report
    puts "I'm #{@name}, I've delivered #{papers} and I've earned #{@earnings} so far!"
  end

end

#
puts tommy = Paperboy.new("Tommy")

puts tommy.earnings # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
