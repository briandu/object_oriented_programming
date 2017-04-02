class Paperboy

  attr_reader :name, :experience, :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    temp_exp = @experience / 2 + 50
  end

  def deliver(start_address, end_address)

      if (end_address - start_address) <= quota
        @earnings = (end_address - start_address) * 0.25 - 2.00

      elsif (end_address - start_address) == quota
        @earnings = (end_address - start_address) * 0.25

      else
        @earnings = (((end_address - start_address) - quota) * 0.50) + (quota * 0.25)

      end

      @experience = (end_address - start_address)
  end

  def report
    puts "#{@name} delivered #{@experience} papers and he has earned $#{@earnings}."
  end

end

=begin

# irb notes

Brian = Paperboy.new("Brian",50,0)

# Test situations

  If delivery < quota:
  Brian.deliver(100,170)


Why does attr_reader have to be above attr_accessor?
=end
