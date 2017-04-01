class BankAccount

  attr_accessor :balance, :interest_rate

  def deposit(amount)
    @balance = amount + @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def gain_interest
    @balance = @balance + (@interest_rate * @balance)
  end

end
