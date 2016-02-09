# This is chapter one assignments in the Learn Programming book by Chris Pine.
# The basic idea is to calulate your age in years if given seconds.
# This is my attempt at the assignment.
# Caleb Faught

print "how many seconds old are you? "
age_in_seconds = gets.to_i

age = age_in_seconds / (365 * 24 * 60 * 60)

puts "You are #{age} years old."
