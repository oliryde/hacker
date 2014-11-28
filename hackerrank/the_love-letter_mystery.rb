

class LoveLetterMystery
	def initialize(string)
		@string = string
		@string_array = string.split('')
		@string_array_reversed = string.reverse.split('')
	end
	def is_palindrome?(string_array)
		@string_array == string_array
	end
	def steps_to_make_palindrome
		string_array = @string_array
		string_array_reversed = @string_array_reversed
		steps = 0
		string_array.each_index { |i| 
			unless is_palindrome?(string_array_reversed)
				char_difference = string_array[i].ord - string_array_reversed[i].ord 
				if char_difference > 0
				 	string_array_reversed[i] = string_array[i]
				 	steps += char_difference
				end
			end
		}
		steps
	end
end

count = gets.to_i
array = []

count.times {
  array << gets.chomp
}

array.each { |e| puts LoveLetterMystery.new(e).steps_to_make_palindrome }