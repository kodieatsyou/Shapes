prompt = '> '
def input
		gets.chomp
end
def get_a_word(word_type)
		puts "Enter a #{word_type}."
		input
end

words = []
puts "Fill in the story!"

words.push(get_a_word("noun"))
words.push(get_a_word("noun"))
words.push(get_a_word("body part"))

puts """
There was a #{words.shift} he was on his way to the #{words.shift} 
On his way there he fell and broke his #{words.shift} 
Then he died. The End
"""