require 'rspec'
require_relative 'roman_numerals.rb'

describe "Roman Numeral Converter" do

  [
      [ 1, "I" ],
      [ 2, "II" ],
      [ 3, "III" ],
      [ 4, "IV" ],
      [ 5, "V" ],
      [ 10, "X" ],
      [ 20, "XX" ],
      [ 40, "XL"],
      [ 50, "L" ],
      [ 2016, "MMXVI"],
      [ 3999, "MMMCMXCIX"]
  ].each do |numeric_pair|

  numeral = RomanNumerals.new
    it "#{numeric_pair[0]} should return #{numeric_pair[1]}" do
      expect(numeral.generate(numeric_pair[0])).to eq(numeric_pair[1])
    end
  end

  it "Should not accept zero" do
    numeral = RomanNumerals.new
    expect(numeral.generate(0)).to eq('Please enter a valid number between 0 and 4000')
  end

  it "Should not accept a value over 3999" do
    numeral = RomanNumerals.new
    expect(numeral.generate(4000)).to eq('Please enter a valid number between 0 and 4000')
  end

end
