require './currency_converter'
require './currency'
require './unlike_currency_error'
require 'byebug'
require './UnknownCurrencyCodeError'

rates = {:USD => 1.00, :EUR => 0.74, :YEN => 1.20}
bank = Converter.new(rates)

dans_money = Currency.new("&", 1000.00)
bobs_money = Currency.new("¥", 740.00)
dans_new_money = bank.convert(money, :EUR)
puts dans_new_money.amount
