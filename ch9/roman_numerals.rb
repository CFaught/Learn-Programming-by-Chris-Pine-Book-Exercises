# This is chapter nine assignments in the Learn Programming book by Chris Pine.
# This program takes a number and returns the old style roman numeral equivalent.
# This is my attempt at the assignment.
# Caleb Faught

def old_roman_numeral num
    # do the thing here.
    if num <= 0 || num > 3000
        return "Input must be a positive non-zero integer and less than 3000."
    end
    numeral = ''

    numeral = numeral + 'M' * (num        / 1000)
    numeral = numeral + 'D' * (num % 1000 / 500)
    numeral = numeral + 'C' * (num % 500  / 100)
    numeral = numeral + 'L' * (num % 100  / 50)
    numeral = numeral + 'X' * (num % 50   / 10)
    numeral = numeral + 'V' * (num % 10   / 5)
    numeral = numeral + 'I' * (num % 5    / 1)

    numeral

end

puts
puts '
    This program takes an integer and returns the old school
    Roman Numeral notation. (i.e. 9 is VIIII not IX)'
puts
print 'Enter a number for conversion: '
input = gets.chomp.to_i

puts old_roman_numeral input
