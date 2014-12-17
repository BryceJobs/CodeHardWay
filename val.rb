def is_separator(ch)
    # REPLACE THIS CODE WITH YOUR isSeparator() METHOD
    sep_arr = [" ",",",".",";",":","!","?"]
    return sep_arr.include? ch
end

# This def tests a character to see if is an alphabet, digit or general things which are parts of words
# It returns true if the character is a typical part of word, false otherwise.
def is_partofword(ch)
    # REPLACE THIS CODE WITH YOUR isPartOfWord() METHOD
    if((ch >= 'A' and ch <= 'Z') or (ch >= 'a' and ch <= 'z') or (ch >= '0' and ch <= '9'))
        return true
    else
        return false
    end
end	
    
# This def takes a string text as input and returns a collection of words as output. From this collection of words, the number of words are 	displayed automatically.
def count_words(text)
	# REPLACE THIS CODE WITH YOUR countWords() METHOD
    word = ""
    words = []
    text = text.each_char.to_a
    length = text.length
    i = 0
	while i < length
        if is_partofword text[i]   
            word += text[i]
            i += 1
        else
        
            words.push(word) if word != ""
            word = ""
            i += 1
        end
    end
    if i = length and word != ""
    	words.push(word)
    end
    puts words.length
    return words.inspect
end


puts count_words "lecebri est malade et il s'en va a l'hosto"