my_name = 'zed A. Shaw'
my_age = 35
my_height = 74
my_weight = 180
my_eyes = 'Blue'
my_teeth = 'white'
my_hair = 'Brown'

puts "let's talk about %s." % my_name
puts "he's %d inches tall." % my_height
puts "he's #{my_weight} pounds heavy" 
puts "Actually that's not heavy."
puts "he's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "his teeth are usually %s depending on the coofee" % my_teeth


puts "If I add %d, %d, and %d I get %d." % 
      [my_age, my_height, my_weight, my_weight + my_height + my_age]