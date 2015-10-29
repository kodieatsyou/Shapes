class Shape

	def initialize(x, y, fill, stroke, width, height, z, mode)

		@x = x
		@y = y
		@color = Gosu::Color.new(0xff_000000)
		@color.red = random_color_component_not_too_dark
		@color.green = random_color_component_not_too_dark
		@color.blue = random_color_component_not_too_dark
		@stroke = @color
		@fill = @color
		@width = width
		@height = height
		@mode = mode
		@z = z
		@fillheight = @y + @height

	end

	def draw
		Gosu.draw_line(@x, @y, @stroke, @x + @width, @y, @stroke, @z, @mode)
		Gosu.draw_line(@x, @y, @stroke, @x, @y + @height, @stroke, @z, @mode)
		Gosu.draw_line(@x + @width, @y, @stroke, @x + @width, @y + @height, @stroke, @z, @mode)
		Gosu.draw_line(@x, @y + @height, @stroke, @x + @width, @y + @height, @stroke, @z , @mode)
		fill_shape
	end

	def fill_shape
		for i in (@y..@fillheight) 
			Gosu.draw_line(@x, i, @fill, @x + @width, i, @fill, -1, @mode)
		end
	end

	def random_color_component_not_too_dark
		rand(256 - 40) + 40
	end

end