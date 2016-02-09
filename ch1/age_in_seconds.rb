# This is chapter one assignments in the Learn Programming book by Chris Pine.
# The basic idea is to calulate your age in seconds.
# This is my attempt at the assignment.
# Caleb Faught

print 'How old are you? '
age = gets.to_i

seconds_in_year = 365 * 24 * 60 * 60
seconds_in_leap_year = 366 * 24 * 60 * 60

num_leap_years = age % 4

age_in_seconds = (age - num_leap_years) * seconds_in_year + (num_leap_years * seconds_in_leap_year)

puts "You are #{age_in_seconds} seconds old :)"
puts "give or take #{seconds_in_year}... depending on leap years :D"
