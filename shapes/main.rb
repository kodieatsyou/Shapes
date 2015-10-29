require "gosu"
require_relative("rectangle")
require_relative("square")
require_relative("triangle")

class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "Shapes"

		@squares = []
		@triangles = []
		@rectangles = []
	end

	def update

	end

	def draw
		@squares.each {|square| square.draw}
		@triangles.each {|triangle| triangle.draw}
		@rectangles.each {|rectangle| rectangle.draw}
		shape = rand(4)
		if shape < 1
		 	@squares.push(Square.new(rand(640), rand(480), Gosu::Color.argb(0xff_00ffff), Gosu::Color.argb(0xff_ff0000), rand(200) + 40, 0, :default))
		elsif shape >= 1 && shape <= 2
			@triangles.push(Triangle.new(rand(640), rand(480), Gosu::Color.argb(0xff_ff00ff), Gosu::Color.argb(0xff_0000ff), rand(200), 0, :default))
		elsif shape > 2
			@rectangles.push(Rectangle.new(rand(640), rand(480), Gosu::Color.argb(0xff_ffffff), Gosu::Color.argb(0xff_00ff00), rand(200), rand(200), 0, :default))
		end
	end

	def button_down(id)
		close if id == Gosu::KbEscape
		# if id == Gosu::KbSpace
		# 	shape = rand(4)
		# 	if shape < 1
		#  		@squares.push(Square.new(rand(640), rand(480), Gosu::Color.argb(0xff_00ffff), Gosu::Color.argb(0xff_ff0000), rand(100) + 40, 0, :default))
		# 	elsif shape >= 1 && shape <= 2
		# 		@triangles.push(Triangle.new(rand(640), rand(480), Gosu::Color.argb(0xff_ff00ff), Gosu::Color.argb(0xff_0000ff), rand(100), 0, :default))
		# 	elsif shape > 2
		# 		@rectangles.push(Rectangle.new(rand(640), rand(480), Gosu::Color.argb(0xff_ffffff), Gosu::Color.argb(0xff_00ff00), rand(100), rand(100), 0, :default))
		# 	end
		# end
	end

end

window = GameWindow.new
window.show
