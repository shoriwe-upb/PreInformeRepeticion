def main
  print "Number n: ".strip
  n = gets.strip.to_f
  print "Number m: ".strip
  m = gets.strip.to_f

  if n < 0 and m < 0
    puts "No natural numbers here"
    exit -1
  end

  current_number = if n > 0 then n else 0 end

  current_number = if current_number > current_number.to_i then current_number.to_i + 1 else current_number.to_i end
  while current_number <= m
    puts current_number.to_i
    current_number += 1
  end
end


main