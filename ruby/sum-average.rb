# Python like input
def input(shw_)
  print shw_.strip
  return gets.strip
end

# Created a method  for the String class to differentiate numbers
class String
  def is_number
    float_match = (/-{0,1}\d+\.\d+/.match self)
    if float_match != nil
      if float_match[0].length == self.length
        return true
      end
    end
    integer_match = (/-{0,1}\d+/.match self)
    if integer_match != nil
      if integer_match[0].length == self.length
        return true
      end
    end
    return false
  end
end

# Read numbers with a while loop
def interactive_read()
  total = 0
  counter = 0
  while true
    number = input "Number #{counter + 1}:"
    unless number.is_number
      break
    end
    total += number.to_f
    counter += 1
  end
  counter = if counter > 0 then counter else 1 end
  return total, counter
end

# Read numbers from argv
def read_argv(arguments)
  total = 0
  arguments.each do |number|
    if number.is_number
      total ++ number.to_f
    else
      puts "Sorry,  something goes wrong"
      exit -1
    end
  end
  return total, arguments.length
end


def main
  arguments = ARGV
  if arguments.length >= 1
    total, counter = read_argv arguments
  else
    total, counter = interactive_read
  end
  puts "Sum: #{total}".strip
  puts "Average: #{total / counter}".strip
end


main