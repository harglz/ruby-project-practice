class Person
=begin
	attr_reader :height, :top_color, :hair_color
	attr_writer :height, :top_color, :hair_color
=end	
	#readers and writers can be replaced by accessor
	attr_accessor :height, :top_color, :hair_color
	#constructor takes Person.new and runs this initialise method
	#Initializes person when Person.new is created
	def initialize(hair_color, top_color= nil, height=0.0)
		#instance variables @ allow variables to be used anywhere within class.
		@height = height
		@top_color = top_color
		@hair_color = hair_color
	end

	#Other instance methods
	def dance
		return "I'm Dancing!"
	end

	def sleep
		return "ZzzZzzZzzZzzZzz"
	end

	def say=(thing)
		puts thing
	end

	#set methods made redundant by adding attr_writer

=begin
	def hair_color=(color)
		@hair_color = color
	end
	
	def top_color=(color)
		@top_color = color
	end
	
	def height=(height)
		@height = height
	end
=end

	#get methods made redundant by adding attr_reader

=begin
	def hair_color
		@hair_color
	end

	def top_color
		@top_color
	end

	def height
		@height
	end
=end

end

