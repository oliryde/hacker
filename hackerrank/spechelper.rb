def filename
  puts File.basename(__FILE__)  
end

def run(file, inputs)s
  file.slice! "_spec"
  IO.popen("ruby #{file}", 'r+') do |pipe|
    inputs.each do |input|
      pipe.puts(input)
    end
    pipe.close_write
    return  pipe.read.split("\n")
  end
end