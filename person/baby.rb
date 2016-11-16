class Baby < Person

	def initialize
		#instance variables @ allow variables to be used anywhere within class.
		super('none')
		@hair_color = 'none'
		@smells = true
	end

	def smells?
		@smells
	end

	def clean
		@smells = false
	end

	def dance
		"waaaah"
	end
end