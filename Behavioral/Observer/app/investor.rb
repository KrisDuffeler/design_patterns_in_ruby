class Investor < Observer
  attr_accessor :stock

  def initialize(name)
    @name = name

    super()
  end

  def update(stock)
    puts "Notified #{@name} of #{stock.symbol}'s " + "change to #{stock.price}"
  end  
end
