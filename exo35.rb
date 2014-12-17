def prompt()
	print ">"
end

def dead(why)

	puts "#{why} Good Job!!"
	Process.exit(0)

end


def gold_room()
	puts "this room is full of gold how much do you take?"
	prompt; next_move = gets.chomp
	if next_move.include? "0" or next_move.include? "1"
		how_much = next_move.to_i()
	else
		dead("Man,learn to type a number")
	end

	if how_much < 50
		puts "Nice you are not greedy, you win!"
		Process.exit(0)
	else
		dead("You are greedy bastard!")
	end
end

def bear_room()
	puts "there is a fat bear in front of a door with"
	puts "a bunch of honey, how to move the bear?"
	bear_moved = false

	while true
		prompt; next_move = gets.chomp

		if next_move == "take honey"
			dead("the bear slap your face")
		elsif next_move == "taunt bear" and not bear_moved
			puts "the bear has moved. you can go through the door"
			bear_moved = true
		elsif next_move == "taunt bear" and bear_moved
			dead("the bear chews your leg")
		elsif next_move == "open door" and bear_moved
			gold_room
		else
			puts "i got no idea wht that means"			
		end
		
	end
	
end

def cthulthu_room()
	puts "the great evil cthulthu is here."
	puts "he, it, stare at you and you go insane"
	puts "Do you flee for your life or eat your head?"

	prompt; next_move = gets.chomp
	if next_move.include? "flee"
		start()
	elsif next_move.include? "head" 
		dead "well that was tasty"
	else
		cthulthu_room
	end
end


def start()
	puts "you are in a dark room"
	puts "there is a door to your right and left"
	puts "which one you take?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulthu_room
	else
		dead "you stumble around the room until you starve"
	end
end

start