class Paperboy

  attr_reader :earnings
  attr_accessor :name, :experience, :earnings

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    experience = (@experience / 2) + 50
    puts "#{name}'s new quota is #{experience}"
  end

  def deliver(start_address, end_address)
    @experience = (end_address - start_address) + @experience
  end
end

=begin

# irb notes

Brian = Paperboy.new("Brian",50,0)

Why does attr_reader have to be above attr_accessor?
=end
