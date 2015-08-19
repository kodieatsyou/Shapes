prompt = '> '
def input
		gets.chomp
end
def get_a_word(word_type)
		puts "Enter a #{word_type}."
end
puts "Fill in the story!"

get_a_word("noun")
noun1 = input

get_a_word("noun")
noun2 = input

get_a_word("body part")
bodypart1 = input

puts """
There was a #{noun1} he was on his way to the #{noun2} 
On his way there he fell and broke his #{bodypart1} 
Then he died. The End
"""

puts "JK THERES MORE!"

get_a_word("saying")
speech1 = input

get_a_word("noun")
noun3 = input

get_a_word("verb")
verb1 = input

get_a_word("bodypart")
bodypart2 = input

puts """
The #{noun1} got up and looked into the stars and said, #{speech1}.
Then he procceded to the #{noun2}.
When he got there he saw a #{noun3}.
He went up to the #{noun3} and #{verb1}'ed it in the #{bodypart2}.
The #{noun3} exploded
Then the #{noun1} rose up and conquered the nation.
The End.
"""