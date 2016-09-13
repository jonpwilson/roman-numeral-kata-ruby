class RomanNumerals

  NUMERALS = [
      ["M", 1000],
      ["CM", 900],
      ["D", 500],
      ["CD", 400],
      ["C", 100],
      ["XC", 90],
      ["L", 50],
      ["XL", 40],
      ["X", 10],
      ["IX", 9],
      ["V", 5],
      ["IV", 4],
      ["I", 1]
  ]

  def generate(numeric)
    if is_valid(numeric)
      to_numeral(numeric)
    else
      'Please enter a valid number between 0 and 4000'
    end
  end

  def is_valid(numeric)
    # Make sure that the number is between 0 and 4000 and that it is a valid number, as per the caveats
    if numeric.is_a? Fixnum
      if numeric > 0 && numeric < 4000
        return true
      end
    end
    false
  end

  def to_numeral(numeric)
    result = ""
    NUMERALS.each do |numeral, arabic|
      while numeric >= arabic
        result += numeral
        numeric -= arabic
      end
    end
    result
  end
end

