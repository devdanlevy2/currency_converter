
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
end
