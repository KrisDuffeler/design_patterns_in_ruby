class Approver
  attr_writer :successor

  def initialize(name)
    @name = name
  end

  def process_request(purchase)
  end

  protected

  attr_reader :successor
end
