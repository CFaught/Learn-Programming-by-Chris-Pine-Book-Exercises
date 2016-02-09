command = ''

puts 'Say something!'

def response?(input)
    if input == 'bye' or input == 'good bye'
        false
    else
        true
    end
end

while response?(command)
    # repeat input back until user says 'bye'
    command = gets.chomp
    puts command
end

puts 'Come again soon!'
