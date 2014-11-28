def utopian_tree(cycles)
	height = 1
	cycles.times { |n| n.even? ? height = height * 2 : height = height + 1 }
	height
end

count = gets.to_i
array = []

count.times {
  array << gets.chomp.to_i
}

array.each { |e| puts utopian_tree(e) }