# CLASS

class BankAccount

  def balance
    return @balance
  end

  def interest_rate
    return @interest_rate
  end

  def deposit(amount)
    amount + @balance
    @balance = amount + @balance
  end

end
