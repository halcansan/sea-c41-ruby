#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 3600
  end
end

class String
  def indent(amount = 2)
    ' ' * amount + self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
      thousands = (self / 1000)
      hundreds = (self % 1000 / 100)
      tens = (self % 100 / 10)
      ones = (self % 10)

      roman = 'M' * thousands

      if hundreds == 9
        roman = roman + 'CM'
      elsif hundreds == 4
        roman = roman + 'CD'
      else
        roman = roman + 'D' * (self % 1000 / 500)
        roman = roman + 'C' * (self % 500 / 100)
      end

      if tens == 9
        roman = roman + 'XC'
      elsif tens == 4
        roman = roman + 'XL'
      else
        roman = roman + 'L' * (self % 100 / 50)
        roman = roman + 'X' * (self % 50 / 10)
      end

      if ones == 9
        roman = roman + 'IX'
      elsif ones == 4
        roman = roman + 'IV'
      else
        roman = roman + 'V' * (self % 10 / 5)
        roman = roman + 'I' * (self % 5 / 1)
      end

      roman
  end
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
