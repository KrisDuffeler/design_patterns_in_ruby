class Purchase
  attr_accessor :number
  attr_accessor :amount
  attr_accessor :purpose

  def initialize(number, amount, purpose)
    @number = number
    @amount = amount
    @purpose = purpose
  end
end
