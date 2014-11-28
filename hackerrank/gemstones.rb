def gem_stones(rocks)
	types = rocks.join.chars.to_a.uniq
	i = 0
	types.each { |e| i = i + 1 if rocks.all? { |r| r.include? e } }
	print i
end

count = gets.to_i
array = []

count.times {
  array << gets.chomp
}

gem_stones(array)