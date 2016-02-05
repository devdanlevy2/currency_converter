#require './currency'


my_money = Currency.new(10000, USD)
my_money.equal_method(USD: 10000)

#this is the least important of the three
puts my_money
