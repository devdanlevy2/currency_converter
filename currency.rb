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

  def +(other)
    @code + other.code if other.unlike_currency_error
  end

  def -(other)
    @code - other.code
  end

  def unlike_currency_error(other)
     raise "DifferentCurrencyCodeError" if @code != other.code
  end

end

dans_money = Currency.new(1000, "YEN")
bobs_money = Currency.new(1000, "USD")

puts dans_money == bobs_money
puts dans_money.amount + bobs_money.amount
