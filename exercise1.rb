class BankAccount


def deposit(amount)
  @balance = @balance + amount
end


def withdraw(amount)
  @balance = @balance - amount
end

def gain_interest(interest)
  @balance = @balance + @balance*interest
end
end
