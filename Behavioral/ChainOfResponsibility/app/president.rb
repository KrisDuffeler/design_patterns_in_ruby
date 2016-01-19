class President < Approver
  def process_request(purchase)
    if purchase.amount < 100000
      puts "President #{@name} approved request ##{purchase.number}"
    else successor
      puts "Request ##{purchase.number} requires an executive meeting!" 
    end
  end
end
