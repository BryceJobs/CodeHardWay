module Ex25
  def self.break_words(stuff)
  	words = stuff.split(' ')
  	words
  end

  def self.sort_words(words)
  	words.sort()
  end

  def self.print_first_word(words)
  	puts words.shift()
  end

  def self.print_last_word(words)
  	puts words.pop()
  end

  def self.sort_sentence(sentence)
  	sort_words break_words(sentence)
  end

  def self.print_first_and_last_word(sentence)
  	words = break_words sentence
  	print_first_word words
  	print_last_word words
  end

  def self.print_first_and_last_word_sorted(sentence)
  	words = sort_sentence sentence
  	print_first_word words
  	print_last_word words
  end

end
