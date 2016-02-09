=begin
#
#   This is a simple script to find and replace text in a .txt file.
#
#   Author:    Caleb Faught
#   Date:      2/8/16
=end

file_name = 'tree.txt'
replace = "#"       # <-- replacement text

buffer = File.read(file_name).gsub(/@/, "#{replace}")    # <-- change the @


File.open(file_name, 'w') do |out|
    out << buffer
end
