class Paperboy

  attr_reader :earnings
  attr_accessor :name, :experience,

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    @experience = (@experience / 2) + @experience
    puts "#{name}'s new quota is #{@experience}'"
  end

  def deliver

  end
end
