class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
  	word_array = str.split
  	word_array.each_with_index do |word, idx|
  		if word.match(/^\w*\W$/) # Edge case testing.
  			sep_word = word.partition(/\W/)
  			puts(sep_word)
  			puts(sep_word[0]) # Testing if I sperate word from word with punctuation.
  			if sep_word[0].length > 4
  				if sep_word[0].match(/^[A-Z]\S*/) # I love Regex :)
  					word_array[idx] = 'Marklar'+ sep_word[1]
  				else
  					word_array[idx] = 'marklar'	+ sep_word [1]
  				end
  			end
  		else
  			self.standard_word_exceed_4(word, idx, word_array)
  		end
  	end
  	word_array.join(" ")
  end
  def self.standard_word_exceed_4(word, idx, word_array)
  	if word.length > 4
  		if word.match(/^[A-Z]\S*/)
  			word_array[idx] = 'Marklar'
  		else
  			word_array[idx] = 'marklar'
  		end
  	end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
  	i = 0
  	even_sum = 0
  	while i <= nth
  	  if self.Fib(i).even?
  	    even_sum += Fib(i)
  	  end
  	  i+= 1
  	end
  	even_sum
  end

  def self.Fib(nth) # It's one of the ways to find Fibonacci number -- the recrusive one which is not so good for performing actually
  	return nth if nth < 2
    Fib(nth - 1) + Fib(nth - 2) # I love writing clean elegant code.
  end
end
