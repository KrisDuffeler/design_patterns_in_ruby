Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/app/*.rb'].each {|file| require file }

#http://www.dofactory.com/net/observer-design-pattern
  
puts 'OBSERVER PATTERN'
puts '----------------'

puts 'Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.'

#Create IBM stock and attach investors
ibm = Stock.new("IBM", 120.00)
ibm.attach(Investor.new("Sorros"))
ibm.attach(Investor.new("Berkshire"))
 
#Fluctuating prices will notify investors
ibm.price = 120.10
ibm.price = 121.00
ibm.price = 120.50
ibm.price = 120.75
