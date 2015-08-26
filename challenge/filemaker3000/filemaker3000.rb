prompt = '> '
puts "Choose a name for your project!", prompt
project = $stdin.gets.chomp

puts "I will now create your folder!"
puts `cd ..` && `mkdir #{project}`
puts "Folder created switching harddrive locations!"
puts `cd ..` && `cd #{project}` && `touch #{project}.rb`
puts "File created!"
puts "Opening file!"
puts `subl #{project}.rb`