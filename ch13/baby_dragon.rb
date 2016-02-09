class Dragon
    # initialize a dragon with the name given
    def initialize name
        @name = name
        @asleep = false
        @stuff_in_belly     = 10
        @stuff_in_intestine = 0

        puts "#{@name} is born!"
    end

    def feed
        puts "You feed #{@name}."
        @stuff_in_belly = 10
        passage_of_time
    end

    def walk
        puts "You walk #{@name}."
        @stuff_in_intestine = 0
        passage_of_time
    end

    def put_to_bed
        puts "You put #{@name} to bed"
        @asleep = true
        srand 0
        sleep_time = rand(3)
        3.times do
            if @asleep
                passage_of_time
            end
            if @asleep
                puts "#{@name} snores, filling the room with smoke."
            end
        end
        if @asleep
            @asleep = false
            puts "#{@name} wakes up slowly."
        end
    end

    def toss
        puts "You toss #{@name} up into the air!"
        puts "He giggles, which singes your eyebrows.."
        passage_of_time
    end

    def rock
        puts "You rock #{@name} gently."
        @asleep = true
        puts 'He briefly dozes off...'
        passage_of_time
        if @asleep
            @asleep = false
            puts '...but wakes up when you stop.'
        end
    end

    def pass
        passage_of_time
    end

    private
    def hungry?
        @stuff_in_belly <= 2
    end

    def poopy?
        @stuff_in_intestine >= 8
    end

    def passage_of_time
        if @stuff_in_belly > 0
            # move some food to intestine.
            @stuff_in_belly     -= 1
            @stuff_in_intestine += 1
        else    # our dragon is starving!
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts "#{@name} is starving! in desperation, he ate YOU! :("
            exit  # This quits the program.
        end

        if @stuff_in_intestine >= 10
            @stuff_in_intestine = 0
            puts "Whoops! #{@name} had an accident..."
        end

        if hungry?
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts "#{@name}'s stomach grumbles..."
        end

        if poopy?
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts "#{@name} farts, causing everyone to pass out.."
        end
    end
end

puts
puts "This is a baby dragon simulator."
puts
puts "Enter a name for your dragon:"
dragon_name = gets.chomp
puts

pet = Dragon.new dragon_name

action = 0

while action != 'quit'

    puts
    puts "You can do any of the following with #{dragon_name}:"
    puts "'1' feed"
    puts "'2' walk"
    puts "'3' put to bed"
    puts "'4' rock"
    puts "'5' toss"
    puts "or 'quit'"
    puts

    if action.to_i == 1
        pet.feed
    elsif action.to_i == 2
        pet.walk
    elsif action.to_i == 3
        pet.put_to_bed
    elsif action.to_i == 4
        pet.rock
    elsif action.to_i == 5
        pet.toss
    elsif action == 'pass'  # secret skip mode.
        pet.pass
    end

    action = gets.chomp

end
