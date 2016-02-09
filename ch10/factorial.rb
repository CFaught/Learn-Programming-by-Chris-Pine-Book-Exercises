# This is chapter ten assignments in the Learn Programming book by Chris Pine.
# This program takes a number and returns the old style roman numeral equivalent.
# This is my attempt at the assignment.
# Caleb Faught

def factorial(num)
    if num < 0
        return "Can't take the factorial of a negative number."
    end
    if num <= 1
        1
    else
        num = num * factorial(num - 1)
    end
end

print "Enter a number: "
puts factorial(gets.to_i)
