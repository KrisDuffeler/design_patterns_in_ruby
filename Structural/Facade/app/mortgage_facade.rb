class MortgageFacade
  def initialize
    @bank = Bank.new
    @loan = Loan.new
    @credit = Credit.new
  end

  def is_eligible(customer, amount)
    puts "#{customer.name} applies for #{amount} loan\n"

    return false unless @bank.has_sufficient_savings(customer, amount)
    return false unless @loan.has_no_bad_loans(customer)
    return false unless @credit.has_good_credit(customer)

    true 
  end
end
