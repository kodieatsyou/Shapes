require "gosu"
require_relative("rectangle")

class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "Shapes"
		@rectangle = Rectangle.new(100, 200, 0, 0, 500, 50, 0, :default)
	end

	def update

	end

	def draw
		@rectangle.draw
	end

	def button_down(id)
		close if id == Gosu::KbEscape
	end

end

window = GameWindow.new
window.show
