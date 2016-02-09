# This is chapter six assignments in the Learn Programming book by Chris Pine.
# This program loops through the lyrics of 99 bottles of beer on the wall..
# This is my attempt at the assignment.
# Caleb Faught

count = 99

while count != 0
    count_str = count.to_s
    puts "#{count_str} bottles of beer on the wall!!"
    puts "#{count_str} bottles of beer.."
    puts "Take one down, and pass it around,"
    count -= 1
    count_str = count.to_s
    puts "#{count_str} bottles of beer on the wall!!"

end

puts "Where did all the rum go?!?"
