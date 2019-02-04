# Expanded english_number
def english_number number
  if number < 0
    return 'Please enter a number that isn\'t ngegative'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  expanded = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 12], ['trillion', 9]]

  left = number
  while expanded.length > 0
    exp_pair = expanded.pop
    name = exp_pair[0]
    base = 10 ** exp_pair[1]

    write = left/base
    left = left - write*base

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(99999)
puts english_number(100000)
puts english_number(1000000000000)
puts english_number(109238572912032394872345)

# Beer on the wall
def wall_beer number
  num_start = number
  current = num_start

  while current > 0
    puts english_number(current).capitalize + ' bottles of beer on the wall, ' +
          english_number(current) + ' bottles of beer!'
    current = current - 1
    puts 'Take one down, pass it around, ' +
          english_number(current) + ' bottles of beer on the wall!'
  end
end

puts wall_beer(12)
