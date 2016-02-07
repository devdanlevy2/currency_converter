
class Currency
  def initialize(code, amount)
    @amount = amount
    @code = code
    @currency_sign = {"$" => :USD, "€" => :EUR, "¥" => :YEN}
  end

  def currency_sign
    @currency_sign
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

  def code_converter
    if currency_sign.has_key?(@code)
      currency_sign[@code]
    else
      puts "I don't know that currency"
    end
  end


  rates = {:USD 1.0, :EUR 0.74, :YEN 1.2}
  rates = Converter.new(rates)
end
