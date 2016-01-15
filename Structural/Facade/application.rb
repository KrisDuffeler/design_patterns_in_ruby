Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/app/*.rb'].each {|file|  p file ; require file }

#http://www.dofactory.com/net/facade-design-pattern
 
puts 'FACADE PATTERN'
puts '--------------'

puts 'Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.'

mortgage = MortgageFacade.new()
customer = Customer.new("De bonneman")

eligible = mortgage.is_eligible(customer, 125000)

puts "#{customer.name} has been #{eligible ? 'Approved' : 'Rejected'}"
