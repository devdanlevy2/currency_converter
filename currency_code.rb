#require '.currency_converter'
require './currency'
require './unlike_currency_error'
#require 'byebug'

dans_money = Currency.new(7000.000, "EUR")
bobs_money = Currency.new(1000.00, "USD")

#byebug
puts dans_money == bobs_money
puts dans_money + bobs_money
#puts dans_money - bobs_money
#puts dans_money * bobs_money
