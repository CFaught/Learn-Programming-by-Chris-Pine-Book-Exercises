# This is chapter six assignments in the Learn Programming book by Chris Pine.
# The basic idea is to create a table of contents with the text left and right
# justified.
# This is my attempt at the assignment.
# Caleb Faught

LINE_WIDTH = 80

title = "Table of Contents"

ch1_str = "chapter 1: Introduction"
ch2_str = "chapter 2: Getting Started"
ch3_str = "chapter 3: Letters"
ch4_str = "chapter 4: Numbers"

pages_ch1_str = "pg. 1"
pages_ch2_str = "pg. 5"
pages_ch3_str = "pg. 25"
pages_ch4_str = "pg. 43"
puts ""
puts(title.center(LINE_WIDTH))
puts ""
puts(ch1_str.ljust(LINE_WIDTH/2) + pages_ch1_str.rjust(LINE_WIDTH/2))
puts(ch2_str.ljust(LINE_WIDTH/2) + pages_ch2_str.rjust(LINE_WIDTH/2))
puts(ch3_str.ljust(LINE_WIDTH/2) + pages_ch3_str.rjust(LINE_WIDTH/2))
puts(ch4_str.ljust(LINE_WIDTH/2) + pages_ch4_str.rjust(LINE_WIDTH/2))
