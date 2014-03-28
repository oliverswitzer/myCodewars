# This is my attempt to implement my own version of ruby's to_i function 


class String 

  def my_to_i
    return_int = 0
    numb_string = self.reverse  # reverse, because you have raise the place of each digit in the number starting from the tens place

    numb_string.each_char.with_index do |char, i|
      ascii_num = char.ord # get the ascii value of the current char
      digit = to_digit(ascii_num)   # convert it to a digit
      return_int += increase_place(digit, i)  # increase the place by multiplying by 10 ** i 
    end
    return_int
  end

end


def increase_place(num, place)
  num * (10 ** place)
end


def to_digit(ascii_num)
  ascii_num - "0".ord 
end

p "123".my_to_i*2



