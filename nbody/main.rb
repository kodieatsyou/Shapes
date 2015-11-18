require "gosu"
require_relative 'z_order'
require_relative 'planet'
class GameWindow < Gosu::Window

	def initialize
		super 800, 800
		self.caption = "NBody"
		@background_image = Gosu::Image.new("images/space.jpg", 
																				:tileable => true)
		@data = []
		@planets = []
		f = File.open("simulations/planets.txt", "r")
		f.each_line do |i|
			@data.push(i)
		end
		for i in 2..@data.length - 1
			info = @data[i].split(" ")
			@planets.push(Planet.new(info[0].to_f, info[1].to_f, info[2].to_f, info[3].to_f, info[4].to_f, info[5], 400, @data[1].to_f))
		end
		@universerad = @data[1]
		@numberofplanets = @data[0]
		@planets.each {|i| i.info}
	end

	def update
			
	end

	def draw
		@background_image.draw(0, 0, ZOrder::BACKGROUND)
		@planets.each do |p|
			p.draw
		end
	end

	def button_down(id)
		close if id == Gosu::KbEscape
	end

end

window = GameWindow.new
window.show
