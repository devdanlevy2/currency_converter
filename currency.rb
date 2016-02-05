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
    @code + other.code
  end

  def -(other)
    @code - other.code
  end

  #def like_code(other)
  # if @code != other.code
  #   raise "DifferentCurrencyCodeError"
  # end

end

dans_money = Currency.new(1000, "YEN")
bobs_money = Currency.new(1000, "USD")

puts dans_money.amount - bobs_money.amount
