module ApplicationHelper
  def mixed_number_to_rational(amount)
    rational_to_return = 0
    amount.split(" ").each { |string|
      if is_rational?(string) # Number?
        if string.include?("/") # Fraction?
          rational_to_return += Rational(string)
        elsif string.to_i == string.to_f # Whole number?
          rational_to_return += string.to_i
        elsif string.include?(".") # Decimal?
          rational_to_return += Rational(string)
        else # Not a fraction, decimal, or whole number.
          return false
        end
      else
        return false # Not a number.
      end
    }
    rational_to_return
  end

  def numeric_to_mixed_number(amount)
    amount_as_integer = amount.to_i
    if (amount_as_integer != amount.to_f) && (amount_as_integer > 0)
      fraction = amount - amount_as_integer
      "#{amount_as_integer} #{fraction}"
    else
      amount.to_s
    end
  end
end
