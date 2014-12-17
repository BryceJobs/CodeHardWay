def get_display(word)
    # Given a string, "word", return a hidden version of it consisting
    # of dashes for the display.
    # REPLACE THIS CODE WITH YOUR get_display() METHOD
    return "-"*word.length
end
def get_display(word)
    # Given a string, "word", return a hidden version of it consisting
    # of dashes for the display.
    # REPLACE THIS CODE WITH YOUR get_display() METHOD
    return "-"*word.length
end

def is_letter_in_word(word,letter)
    # Given the word "word", check if it contains the letter "letter".
    # REPLACE THIS CODE WITH YOUR is_letter_in_word() METHOD
    puts word.index(letter)
    return word.include? letter
end

def get_letter(word,letter,display)
   
    ind = []
    pos = -1
       while pos
           pos = word.index letter, pos + 1
           ind.push(pos) if pos
       end
       #puts ind
    #if pos
    ind.each do |pos|
      display[pos] = letter
    end
    return display
end

puts get_display "bryce"
puts get_letter 'brcyce', 'w', '------'
puts is_letter_in_word "broycoe", 'o'