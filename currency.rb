#require '.currency_converter'

class Currency
  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def code
    @code
  end

  def amount
    @amount
  end

  def ==(other)
    @code == other.code
  end

end

dans_money = Currency.new(1000, "USD")
bobs_money = Currency.new(1000, "YEN")

puts dans_money.code == bobs_money.code
puts dans_money.amount == bobs_money.amount
