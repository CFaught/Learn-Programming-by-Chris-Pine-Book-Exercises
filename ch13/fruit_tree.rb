class Fruit_Tree
    def initialize
        @height = 0
        #@planted = Time.new
        @age = 0
        #@dampness = 5
        @fruit = 0
        @alive = true
        @type = 'Coconut'
        @fruit_type_pl = "#{@type.downcase}s"
        @fruit_type_sl = "#{@type.downcase}"
        file_name = "tree.txt"

        File.readlines(file_name).each do |line|
            puts line
        end

        puts "You planted a #{@type} tree!"
        puts "You can water it, pick fruit, or count fruit."
    end

    def count_fruit
        if @fruit == 1
            puts "Your tree has one #{@fruit_type_sl}."
        else
            puts "Your tree has #{@fruit} oranges."
        end
    end

    def height
        if @alive
            puts "Your tree is #{'%0.2f' % @height} meters tall!"
        else
            puts "a dead tree is not very tall.."
        end
    end

    def pick_fruit(num)
        if @alive
            if num <= @fruit
                @fruit = @fruit - num
                puts "You picked #{num} #{@fruit_type_pl}, leaving the tree with #{@fruit} left."
                puts "That was delicious!"
            else
                puts "There aren't that many #{@fruit_type_pl} on the tree!"
            end
        else
            puts "Your tree is dead, and doesn't have any fruit."
        end
    end

    def passage_of_time(time)
        time.times do
            # using time as years?
            #new_time = Time.new
            #year = @age % 60
            #@age = new_time - @planted

            # a year?
            @height += 0.4  # meters
            @age += 1

            # reset fruit each year
            if @alive
                if @age > 50
                    @fruit = 0
                    @alive = false
                    puts "Your tree died of old age."
                elsif @age > 40
                    @fruit = 20
                elsif @age > 30
                    @fruit = 15
                elsif @age > 25
                    @fruit = 10
                elsif @age > 15
                    @fruit = 8
                elsif @age > 9
                    @fruit = 6
                elsif @age > 5
                    @fruit = 4
                end

                puts "Your tree grew to #{'%0.2f' % @height} meters!"
                puts "Your tree has #{@fruit} #{@fruit_type_pl}!"
            else
                puts "Your tree is still dead."
            end
        end
    end
end

tree = Fruit_Tree.new

while true

    input = gets.chomp
    inp_arr = input.split(' ')

    if input == 'exit'
        exit
    elsif inp_arr[0].to_s == 'pick'
        tree.pick_fruit(inp_arr[1].to_i)
    elsif input == 'count'
        tree.count_fruit
    elsif input == 'water'
        # watering goes here.
    elsif inp_arr.length == 1 && inp_arr[0].to_s == 'pass'
        tree.passage_of_time(1)
    elsif inp_arr[0].to_s == 'pass'
        tree.passage_of_time(inp_arr[1].to_i)
    end
end
