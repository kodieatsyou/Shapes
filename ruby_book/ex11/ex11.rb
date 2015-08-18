print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

health = age.to_i + height.to_i + weight.to_i
puts health

list = [age, height, weight]
another_list = ["3", 2, true]
a, b, c = list
d = list.first