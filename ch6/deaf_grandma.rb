# This is chapter six assignments in the Learn Programming book by Chris Pine.
# This program is a simulation of a deaf grandma that only responds if you yell.
# This is my attempt at the assignment.
# Caleb Faught

puts "HELLO SONNY!"
response = gets.chomp

srand 0

count = 0

while count != 2

    # the only way to terminate the conversation
    # is by shouting BYE
    # She ignores you three times
    if response == 'BYE'
        count += 1
    end

    rand_year = rand(20) + 1930 # just to make it funnier..

    if response == response.upcase
        puts "NO, NOT SINCE #{rand_year.to_s}"
    else
        puts "HUH?! YOU GOTTA SPEAK UP SONNY!"
    end
    response = gets.chomp
end
