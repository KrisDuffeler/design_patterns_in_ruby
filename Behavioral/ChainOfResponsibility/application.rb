Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/app/*.rb'].each {|file| require file }

#http://www.dofactory.com/net/chain-of-responsibility-design-pattern
#
puts 'CHAIN OF RESPONSIBILITY PATTERN'
puts '-------------------------------'

puts 'Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.'

larry = Director.new('Larry')
sam = VicePresident.new('Sam')
tammy = President.new('Tammy')

larry.successor = sam
sam.successor = tammy

purchase = Purchase.new(2034, 350, "Assets")
larry.process_request(purchase)

purchase = Purchase.new(2035, 32590, "Project X")
larry.process_request(purchase)

purchase = Purchase.new(2036, 122100, "Project Y")
larry.process_request(purchase)
