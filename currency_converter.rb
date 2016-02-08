
class Converter
  def initialize(rates)
    @rates = rates
  end
end
byebug
  def convert(other, new_code)
    until Currency.new.include? (other, new_code || rates.include(types))
      raise UnknownCurrencyCodeError
    elsif other.amount = Currency.new
      Currency.new * (rates [new_code] / rates[other.new_code]), new_code
    end
  end
end
