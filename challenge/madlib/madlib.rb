def menu
	puts"Choose a story (1, 2, or 3!)"
	story_num = $stdin.gets.chomp.to_i
	if story_num == 1
		story1
	elsif story_num == 2
		story2
	elsif story_num == 3
		story3
	elsif story_num != 1 || 2
		menu
	end
end
			
def input
	gets.chomp
end
def get_a_word(word_type)
	puts "Enter a #{word_type}."
	input
end


def story1
	words = []
	puts "Story 1!"

	words.push(get_a_word("noun"))
	words.push(get_a_word("noun"))
	words.push(get_a_word("body part"))

	puts """
		There was a #{words.shift} he was on his way to the #{words.shift} 
	On his way there he fell and broke his #{words.shift} 
	Then he died. The End
	"""
end

def story2
	words = []
	puts "Story 2!"

	words.push(get_a_word("name"))
	words.push(get_a_word("noun"))
	words.push(get_a_word("verb"))
	words.push(get_a_word("BodyPart"))
	words.push(get_a_word("Place"))

	puts """
		There once was man named #{words.shift} he was sitting
	in his yard thinking about #{words.shift} while he was 
	in his yard another man came up and #{words.shift}'ed the
	man in the #{words.shift} then the man ran to the #{words.shift}
	THE END!
	"""
end

def story3
	words = []
	puts "Story 3!"

	words.push(get_a_word("name"))
	words.push(get_a_word("Bodypart"))

	puts """
	There was a man named #{words.shift} she likes
	#{words.shift}
	"""	
end

menu