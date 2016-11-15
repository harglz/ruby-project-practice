class Bird
	def initialize
		@color = nil
		@type = nil
		@spotted = nil
		@can_fly = nil
		@length = 0.0
	end

	def get_bird_color
		return @color
	end

	def set_bird_color(color)
		@color = color
	end

	def get_bird_type
		return @type
	end

	def set_bird_type(str)
		@type = str
	end

	def get_spot_date
		return @spotted
	end

	def set_spot_date(date)
		@spotted = date
	end

	def get_can_fly
		return @can_fly
	end

	def set_can_fly?(bool)
		@can_fly = bool
	end

	def get_length
		return @length
	end

	def set_length(length)
		@length = length
	end

	def chirp
		return "Tweet Tweet"
	end

	def fly
		if @can_fly
			return "I believe I can fly!"
		else
			return "I'm grounded!"
		end
	end

	def waddle
		return "Waddle... Waddle... Waddle..."
	end

	def peck
		return "I'll bite your hand off!"
	end

	def describe
		if @can_fly
			return "I am a #{@color} #{@type}. I was spotted on #{@spotted}. I can fly and I am #{@length} cm long."
		else
			return "I am a #{@color} #{@type}. I was spotted on #{@spotted}. I cannot fly and I am #{@length} cm long."
		end
	end

end