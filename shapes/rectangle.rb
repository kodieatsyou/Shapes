class Rectangle

	def initialize(x, y, fill, stroke, width, height, z, mode)

		@x = x
		@y = y
		@fill = Gosu::Color.argb(0xff_00ff00)
		@stroke = Gosu::Color.argb(0xff_00ffff)
		@width = width
		@height = height
		@mode = mode
		@z = z
		@fillheight = @y + @height

	end

	def draw
		draw_rectangle
		fill_shape
	end

	private
		def draw_rectangle
			Gosu.draw_line(@x, @y, @stroke, @x + @width, @y, @stroke, @z, @mode)
			Gosu.draw_line(@x, @y, @stroke, @x, @y + @height, @stroke, @z, @mode)
			Gosu.draw_line(@x + @width, @y, @stroke, @x + @width, @y + @height, @stroke, @z, @mode)
			Gosu.draw_line(@x, @y + @height, @stroke, @x + @width, @y + @height, @stroke, @z , @mode)
		end

		def fill_shape
			for i in (@y..@fillheight) 
				Gosu.draw_line(@x, i, @fill, @x + @width, i, @fill, -1, @mode)
			end
		end

end