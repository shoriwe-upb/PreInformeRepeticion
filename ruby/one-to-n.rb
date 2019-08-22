def main
  print "Number n: ".strip
  n = gets.strip.to_f
  current_number = 1
  negative = false
  while current_number <= n
    if negative
      puts -current_number
      negative = false
    else
      puts current_number
      negative = true
    end
    current_number += 1
  end
end

main