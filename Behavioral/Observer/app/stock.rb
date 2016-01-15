class Stock < Subject
  attr_reader :price
  attr_reader :symbol

  def initialize(symbol, price)
    @symbol = symbol
    @price = price

    super()
  end

  def price=(value)
    @price = value

    notify
  end
end
