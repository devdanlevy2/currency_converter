require './currency'
require 'byebug'

dans_money = Currency.new(7000000, "USD")
bobs_money = Currency.new(1000, "USD")

#byebug
puts dans_money.code == bobs_money.code
puts dans_money + bobs_money
puts dans_money - bobs_money
