# This is chapter six assignments in the Learn Programming book by Chris Pine.
# This program tells you the leap years in a range of years
# This is my attempt at the assignment.
# Caleb Faught

puts 'This is a leap year calculator for a range of years.'

print 'Enter the starting year in calculation: '
start_year = gets.chomp.to_i

print 'Enter the ending year in calculation: '
end_year = gets.chomp.to_i

leap_year_count = 0

if start_year <= end_year
    if start_year % 400 == 0
        leap_year_count += 1
        start_year += 1
    elsif end_year % 400 == 0
        leap_year_count += 1
    end

    while start_year < end_year
        end_year -= 1

        if end_year % 4 == 0
            leap_year_count += 1
        end
    end
    puts "There are #{leap_year_count.to_s} leap years in that range."
else
    puts "Invalid range."
end
