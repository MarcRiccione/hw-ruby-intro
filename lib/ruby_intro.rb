# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
	res = 0
	arr.each { |a| res += a}
	res
end

def max_2_sum arr
  # YOUR CODE HERE
	sum = 0
	maxes = arr.max(2)
	sum = maxes.sum
end

def sum_to_n? arr, n
	arr.combination(2) { |c| return true if c.sum == n }
	false
end

# Part 2

def hello(name)
  res = "Hello, "
  res << name
end

def starts_with_consonant? s
  Regexp.new('^[qwrtypsdfghjklzxcvbnm]', Regexp::IGNORECASE).match?(s)
end

def binary_multiple_of_4? s
	#if /^[01]+$/.match?(s)
	#	s.to_i(2) % 4 == 0
	#else
	#	false
	#end
	/^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		if isbn.empty?
			raise ArgumentError.new("Empty String")
		end
		if price <= 0
			raise ArgumentError.new("Price is less than or equal to zero")
		end
		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def price=(price)
		@price = price
	end

	def isbn=(isbn)
		@isbn = isbn
	end

	def price_as_string()
		res = "$"
		decimals = @price - @price.floor		
		if (decimals > 0)
		    firstPart = @price - decimals
		    firstPart = firstPart.to_s
		    res << firstPart.sub!(/.0$/, "")
		    res << "."
		    decimals = (decimals * 100)
		    decimals = decimals.floor
		    decimalString = decimals.to_s
		    res << decimalString
		else
			res << (@price.to_s)
			res << ".00"
		end
		res
	end

end
