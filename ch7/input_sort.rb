# This is chapter seven assignments in the Learn Programming book by Chris Pine.
# This program takes any number of inputs (until ENTER or an empty string)
# and pushes them to an array, sorts them,
# and then repeats them to you in order.
#
# This is my attempt at the assignment.
# Caleb Faught

arr = []
puts "
    This program takes a list of words until you Enter
    an empty line, and then repeats them in order."
puts ""

puts "Enter a list of words:"
input = gets.chomp
arr.push input

while input != ''
    input = gets.chomp
    arr.push input
end

puts "And now the sorted list:"
puts arr.sort
puts ""
