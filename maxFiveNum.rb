

# Complete the solution so that it returns 
# the largest five digit number found within 
# within the number given.. The number will be 
# passed in as a string of only digits. It 
# should return a five digit integer. 
# The number passed may be as large as 1000 digits.


def solution(digits)
  max_num = digits[0...5].to_i
  digits.each_char.with_index do |num, i|
    current_five = digits[i...i+5].to_i
    if current_five > max_num
      max_num = current_five
    end
  end
  max_num
end

puts solution("12313454325899495")