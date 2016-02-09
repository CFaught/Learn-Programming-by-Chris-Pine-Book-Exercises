# This is chapter nine assignments in the Learn Programming book by Chris Pine.
# This program takes a number and returns the roman numeral equivalent.
# This is my attempt at the assignment.
# Caleb Faught

def roman_numeral(num)
    # do the things

    reduction = {
        1000 => 'M',
        900 => 'CM',
        500 => 'D',
        400 => 'CD',
        100 => 'C',
        90 => 'XC',
        50 => 'L',
        40 => 'XL',
        10 => 'X',
        9 => 'IX',
        5 => 'V',
        4 => 'IV',
        1 => 'I'
    }

    numeral = ''

    while num > 0
        reduction.each do |key, value|
            if num / key >= 1
                numeral << value
                num -= key
                break
            end
        end
    end
    numeral
end

puts
puts '
    This program takes an integer and returns the modern
    Roman Numeral notation. (i.e. 9 is IX)'
puts
print 'Enter a number for conversion: '
input = gets.chomp.to_i

puts roman_numeral input
