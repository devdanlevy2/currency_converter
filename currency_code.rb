require './currency_converter'
require './currency'
require './unlike_currency_error'
require 'byebug'

dans_money = Currency.new("$", 1000.00)
bobs_money = Currency.new("¥", 740.00)

#byebug
#puts dans_money == bobs_money
#puts dans_money + bobs_money
#puts dans_money - bobs_money
#puts dans_money * bobs_money
#puts dans_money.convert
#puts dans_money.code_converter
puts bobs_money.code_converter
