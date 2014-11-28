require_relative 'spechelper'

puts run(File.basename(__FILE__), ['2', '0', '1']).inspect
puts run(File.basename(__FILE__), ['2', '3', '4']).inspect