# This is chapter seven assignments in the Learn Programming book by Chris Pine.
# This program takes any number of inputs (until ENTER or an empty string)
# and pushes them to an array, sorts them,
# and then repeats them to you in order. only this version doesn't
# use the built in sort method.
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

while input != ''   # keeps asking for a word until an empty string is passed
    input = gets.chomp
    if input != ''
        arr.push input
    end
end

def sort_array(arr)
    # bubble sort.. I know, but its easy and gets the job done.
    if arr.length > 1
        total_iter = 0

        while total_iter < arr.length
            count = 0
            while count <= arr.length - 1
                if arr[count + 1] != nil
                    if arr[count].downcase > arr[count + 1].downcase
                        tmp = arr[count]
                        arr[count] = arr[count + 1]
                        arr[count + 1] = tmp
                    end
                end
                count += 1
            end
            total_iter += 1
        end
    end
    arr
end


puts "And now the sorted list:"
puts sort_array(arr)
puts ""
