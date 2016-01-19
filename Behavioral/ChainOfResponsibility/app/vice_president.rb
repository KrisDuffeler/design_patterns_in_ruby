class VicePresident < Approver
  def process_request(purchase)
    if purchase.amount < 25000
      puts "Vice President #{@name} approved request ##{purchase.number}"
    elsif successor
      successor.process_request(purchase)
    end
  end
end
