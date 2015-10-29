require_relative"shape"

class Square < Shape
	def initialize(x, y, fill, stroke, width, z, mode)
	super(x, y, fill, stroke, width, width, z, mode)
		
	end
end