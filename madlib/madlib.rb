prompt = '> '
def input
		gets.chomp
end
puts "Fill in the story!"

puts "A Noun ", prompt
noun1 = input

puts "Another Noun ", prompt
noun2 = input

puts "A bodypart ", prompt
bodypart1 = input

puts """
There was a #{noun1} he was on his way to the #{noun2} 
On his way there he fell and broke his #{bodypart1} 
Then he died. The End
"""

puts "JK THERES MORE!"

puts "A saying ", prompt
speech1 = input

puts "Another noun ", prompt
noun3 = input

puts "A verb ", prompt
verb1 = input

puts "Another bodypart ", prompt
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