# This is chapter seven assignments in the Learn Programming book by Chris Pine.
# The basic idea is to create a table of contents with the text left and right
# justified using an array for the contents.
# This is my attempt at the assignment.
# Caleb Faught

LINE_WIDTH = 80

title = "Table of Contents"
chapter_array = [
    "chapter 1: Introduction",
    "chapter 2: Getting Started",
    "chapter 3: Letters",
    "chapter 4: Numbers"
]

pages_array = [
    "pg. 1",
    "pg. 5",
    "pg. 25",
    "pg. 43"
]

length_contents = chapter_array.length

puts ""
puts(title.center(LINE_WIDTH))
puts ""

length_contents.times do |i|
    puts(chapter_array[i].ljust(LINE_WIDTH/2) + pages_array[i].rjust(LINE_WIDTH/2))
end
