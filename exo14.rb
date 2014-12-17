user = ARGV.first

prompt = '>'

puts "Hi #{user}, I'm the #{$0} script"
puts "I'd like to ask you few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "what kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
so you said you #{likes} about liking me.
you live in #{lives}, not sure where that is 
and you have a #{computer} computer. Nice
MESSAGE