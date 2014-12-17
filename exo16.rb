filename = ARGV.first
script = $0

puts "we're going to erase #{filename}"
puts "hit crtl-c to cancel"
puts "or press return to confirm"

print "? "

STDIN.gets


puts "opening the file..."
target = File.open(filename, 'w')

puts "truncating the file !!!!! Goodbye"
target.truncate(target.size)

puts "now i'm going to ask you 3 linesto write back in the file"
print "line 1 : "; line1 = STDIN.gets.chomp()
print "line 2 : "; line2 = STDIN.gets.chomp()
print "line 3 : "; line3 = STDIN.gets.chomp()

puts "i'm going to write these to the file"

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally we close it."

target.close()