require_relative"shape"

class Triangle < Shape
	def initialize(x, y, fill, stroke, width, z, mode)
	super(x, y, fill, stroke, width, width, z, mode)
		
	end

	def draw
		Gosu.draw_line(@x, @y + @width, @stroke, @x + @width/2, @y, @stroke, @z, @mode)
		Gosu.draw_line(@x, @y + @width, @stroke, @x + @width, @y + @width, @stroke, @z, @mode)
		Gosu.draw_line(@x + @width, @y + @width, @stroke, @x + @width / 2, @y, @stroke, @z, @mode)
		fill_shape
	end

	def fill_shape
		for i in 0..@width/2
			w = (@width/2)-i
			Gosu.draw_line(@x+@width-w, @y+@width, @fill, @x+@width/2, @y, @fill)
		end
		for i in 0..@width/2
			w = (@width/2)-i
			Gosu.draw_line(@x+w, @y+@width, @fill, @x+@width/2, @y, @fill)
		end
	end
end