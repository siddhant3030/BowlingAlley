class Enum
	def initialize
		bowling_inputs = ('0'..'9').to_a
		bowling_inputs += ['x', '/']
		@bowling_inputs = bowling_inputs
	end

	def generate_score
		@bowling_inputs.sample
	end

	self.new.generate_score
end