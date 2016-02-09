# This is chapter ten assignments in the Learn Programming book by Chris Pine.
# This program takes a map (an array of land or water elements), and determines
# land mass size. Based off of what the author did for Civ III
# Caleb Faught

# The map: _ is water and M is land (M is visually more dense, therefore
# easier to read)


M = 'land'
_ = 'water'

world = [
    [_,_,_,_,_,_,M,_,_,_,_],
    [M,_,_,_,M,M,_,_,_,_,_],
    [_,_,_,_,_,_,_,_,M,M,_],
    [_,_,_,M,_,_,_,_,_,_,_],
    [_,_,_,M,_,M,M,_,_,_,_],
    [_,_,_,_,M,M,M,M,_,_,M],
    [_,_,_,M,M,M,M,M,M,M,_],
    [_,_,_,M,M,_,M,M,M,_,_],
    [_,_,_,_,_,_,M,M,_,_,_],
    [_,M,_,_,_,M,_,_,_,_,_],
    [_,_,_,_,_,_,M,_,_,_,_]]

SIZE = 10   # assuming square map


def continent_size world, x, y
    if x > SIZE || x < 0 || y > SIZE || y < 0   # check if edge of map
        return 0
    end

    if world[y][x] != 'land'    # only count land
        return 0
    end

    #count current tile.
    size = 1
    world[y][x] = 'counted'

    size = size + continent_size(world, x-1, y-1)
    size = size + continent_size(world, x  , y-1)
    size = size + continent_size(world, x+1, y-1)
    size = size + continent_size(world, x-1, y  )
    size = size + continent_size(world, x+1, y  )
    size = size + continent_size(world, x-1, y+1)
    size = size + continent_size(world, x  , y+1)
    size = size + continent_size(world, x+1, y+1)
    size
end

# iterate through map, finding land and counting continent sizes.
def find_land world
    count = []

    world.each_with_index do |y, y_ind|
        #puts y.index(y_ind)
        world[y_ind].each_with_index do |x, x_ind|
            if world[y_ind][x_ind] == 'land'
                count.push continent_size(world, x_ind, y_ind)
            end
        end
    end
    count
end

puts find_land world
puts

# print map
world.each_with_index do |row, row_index|

    world[row_index].each_with_index do |column, col_index|
        if world[row_index][col_index] == 'water'
            print "~~"
        else
            print "\u2588\u2588"
        end
    end
    puts
end

puts
