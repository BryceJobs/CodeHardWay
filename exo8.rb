formatter = "%s %s %s %s"

puts formatter % [1, 2, 3, 4]

puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, true, false]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
	"I had this thing.",
	"that you could type up right.",
	"But it didn't sing",
	"So i said goodnight."
]