#Improved ask method
def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    end
    if reply == 'no'
      return false
    end

  end
  answer
end
ask 'Do you like drinking horchata?'
ask 'DO you like eating flautas?'

#Roman Numerals Old-School
def old_rome numb
  roman = ''

  roman = roman + 'M' * (numb        / 1000)
  roman = roman + 'D' * (numb % 1000 / 500)
  roman = roman + 'C' * (numb % 500  / 100)
  roman = roman + 'L' * (numb % 100  / 50)
  roman = roman + 'X' * (numb % 50  / 10)
  roman = roman + 'V' * (numb % 10  / 5)
  roman = roman + 'I' * (numb % 5  / 1)
  roman
end
puts(old_rome(1999))


#Roman Numerals New-School
def new_rome num
  thous = (num / 1000)
  hunds = (num % 1000 / 100)
  tens  = (num % 100  / 10)
  ones  = (num % 10)

  roman = 'M' * thous

  if hunds == 9
    roman = roman + 'CM'
  elsif hunds == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'c' * (num % 500 / 100)
  end

  if tens == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = roman + 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
  end

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
  end

  roman
end

puts(new_rome(1999))
