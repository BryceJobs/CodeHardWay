input_file = ARGV.first

def print_all(f)
	puts f.read()
end

def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
	puts "#{line_count}  #{f.readline()}"
end

current_file = File.open(input_file)


puts

 print_all(current_file)

 puts
 puts "now let rewind all this"
 rewind(current_file)

current_line = 0
print_a_line(current_line, current_file)

current_line += 1 
print_a_line(current_line, current_file)

current_line += 1 
print_a_line(current_line, current_file)
