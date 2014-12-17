from_file, to_file = ARGV
script = $0

puts "copying from file #{from_file} to #{to_file}"

input = File.open(from_file)
indata = input.read()
puts "the input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready? hit return to continue, Ctrl-C to abort. "
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "all done"

output.close()
input.close()