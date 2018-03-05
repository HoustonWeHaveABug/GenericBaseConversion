class BaseConversion
	@@base_min = 2

	def valid_base?(str, base)
		base >= @@base_min && str.chars.to_a.uniq.size == base
	end

	def initialize(idigits, odigits, istr)
		@idigits = idigits
		@ibase = idigits.size
		@odigits = odigits
		@obase = odigits.size
		@istr = istr
		@ostr = ""
		if !valid_base?(@idigits, @ibase) || !valid_base?(@odigits, @obase)
			return
		end
		val = 0
		@istr.chars.to_a.each { |digit|
			digit_val = @idigits.chars.to_a.index(digit)
			if digit_val.nil?
				return
			end
			val = val*@ibase+digit_val
		}
		while val > 0
			@ostr += @odigits.chars.to_a[val%@obase]
			val /= @obase
		end
		if @ostr.size == 0
			@ostr = @odigits.chars.to_a[0]
		end
		@ostr.reverse!
	end

	def output
		puts @ostr
	end

	private :valid_base?
end

if ARGV.size == 3
	BaseConversion.new(ARGV[0], ARGV[1], ARGV[2]).output
end
