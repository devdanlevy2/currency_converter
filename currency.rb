
class Currency
  def initialize(code, amount)
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
    if @code == other.code && @amount == other.amount
      true
    else
      false
    end
  end

  def +(other)
    if @code == other.code
      @amount + other.amount
    else
    raise UnlikeCurrencyError
    end
  end

  def -(other)
    if @code == other.code
      @amount - other.amount
    else
      raise UnlikeCurrencyError
    end
  end

  def *(other)
    if @code == other.code
      @amount * other.amount
    else
      raise UnlikeCurrencyError
    end
  end

current_rates = {USD: 1.0, EUR: 0.74, YEN: 1.2}
current_rates = Converter.new


#  def convert_codes{
#  #  :USD => "$",
#  #  :EUR => "€",
#  #  :YEN => "¥",
#  end
end
