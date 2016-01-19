class Director < Approver
  def process_request(purchase)
    if purchase.amount < 10000
      puts "Director #{@name} approved request ##{purchase.number}"
    elsif successor
      successor.process_request(purchase)
    end
  end
end
