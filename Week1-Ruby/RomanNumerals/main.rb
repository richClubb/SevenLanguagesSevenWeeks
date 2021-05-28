#!/usr/bin/env ruby
# This is an example of a roman numeral converter

class Converter
  @@type = ""
  @@number = 0
  @@numeral = ""

  @@numerals = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  @@specials = {"IV" => "IIII", "IX" => "VIII", "XL" => "XXXX", "XC" => "LXXXX", "CD" => "CCCC", "CM" => "DCCCC" }
  @@numbers = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
  attr_accessor :type
  attr_accessor :number
  attr_accessor :numeral

  def initialize(input)

    @number = input.to_i

    if @number == 0
      result = self.check_numeral(input)
      if result == true
        @type = "Numeral"
        @numeral = input.upcase
      end

    else
      @type = "Number"
    end

  end

  def check_numeral(input)
    input = input.upcase

    if input == ""
      output = false
    else

      @@numerals.each do |key|
        input.gsub!(/[#{key}]/,"")
      end

      if input == ""
        output = true
      else
        output = false
      end
    end
  end

  def to_number
    if @type == "Number"
      output = @number
    else
      temp = @numeral

      @@specials.each do |key, value|
        temp.gsub!(key, value)
      end

      output = 0
      @@numerals.each do |key, value|
        output = output + (temp.count(key) * value)
      end

      output

    end
  end

  def to_numeral
    if @type == "Numeral"
      output == @numeral
    else
      output = ""
      sum = @number

      @@numbers.each do |key, value|
        temp = sum / key
        output = output + value * temp
        sum = sum - ( temp * key )
      end

      output
    end
  end

end

if ARGV.length != 1
  puts "Incorrect arguments"
  exit
end

input = ARGV[0]

conv = Converter.new(input)

if conv.type == "Number"
  puts "You entered a number, it was #{conv.number}"
  puts "Converted it is #{conv.to_numeral}"
elsif conv.type == "Numeral"
  puts "You entered a numeral, it was #{conv.numeral}"
  puts "Converted it is #{conv.to_number}"
else
  puts "WHAT DID YOU DO!!!!"
end
