

def read_file
  File.read("bd.txt").split("\n").map { |line| line.split("-").map(&:strip) }
end


def write
end

def delete
end



def show
  puts read_file
end

puts ARGV.inspect

options = ARGV.join(" ") 

if options == ""
  puts "Listando"
  
elsif options.include?("-d")
  id = ARGV[1]
  puts "borrando task #{id}" 
else
  task = options
  puts "agregando #{task}"
end

# options with case

puts show