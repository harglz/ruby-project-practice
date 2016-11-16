class Baby < Person

	def initialize
		#instance variables @ allow variables to be used anywhere within class.
		super('none')
		@smells = true
	end

	def smells?
		@smells
	end

	def clean
		@smells = false
	end

	def dance
		build_cry
	end

	def cry
		build_cry
	end

	def cry_lots
		build_cry(3)
	end

	private
	
	def build_cry(n=1)
		"waaaah " * n
	end
end
