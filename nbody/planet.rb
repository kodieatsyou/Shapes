class Planet
	def initialize(xpos, ypos, xvel, yvel, mass, name, center, max)
		@name = name
		@center = center
		@max = max
		@xpos = xpos
		@ypos = ypos
		@xvel = xvel
		@yvel = yvel
		@mass = mass
		@image = Gosu::Image.new("images/#{name}")
	end

	def draw
		x = @xpos * (400.0 / @max)
		y = @ypos * (400.0 / @max)
		@image.draw_rot(@center + x, @center + y, ZOrder::PLANET, 0)
	end

	def info
		puts @name
		puts @xpos
		puts @ypos
	end
end
