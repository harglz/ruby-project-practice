class Person
	#constructor takes Person.new and runs this initialise method
	def initialize
		#instance variables @ allow variables to be used anywhere within class.
		@height = 0.0
		@top_color = nil
		@hair_color = nil
	end

	def set_hair_color(color)
		@hair_color = color
	end

	def get_hair_color
		return @hair_color
	end

	def set_top_color(color)
		@top_color = color
	end

	def get_top_color
		return @top_color
	end

	def set_height(height)
		@height = height
	end

	def get_height
		return @height
	end

	def dance
		return "I'm Dancing!"
	end

	def sleep
		return "ZzzZzzZzzZzzZzz"
	end
end