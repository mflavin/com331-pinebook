def say_moo
  puts 'moooooo...'
end

say_moo
say_moo
puts 'coin-coin'
say_moo
say_moo

def say_moo number_of_moos
  puts 'mooooo...'*number_of_moos
end

say_moo 3
puts 'oink-oink'


def double_this num
  num_times_2 = num*2
  puts num.to_s+' doubled is '+num_times_2.to_s
end
double_this 44


tough_var = 'You can\'t even touch my variable!'

def little_pest tough_var
  tough_var = nil
  puts 'HAHA!  I ruined your variable!'
end
little_pest tough_var
puts tough_var


def square x
  puts(x * x)
end

x = 5
square 5

my_number = 5
square my_number

x = 10
my_number = x / 2
square my_number


return_val = puts 'This puts returned:'
puts return_val

def say_moo number_of_moos
  puts 'moooo...'*number_of_moos
  'yellow submarine'
end

x = say_moo 3
puts x.capitalize + ', dude...'
puts x            + '.'

def favorite_food name
  if name == 'Lister'
    return 'vindaloo'
  end
  if name == 'Rimmer'
    return 'mashed potatoes'
  end
  'hard to say...maybe fried plantain?'
end

def favorite_drink name
  if name == 'Jane-Luc'
    'tea, Earl Grey, hot'
  elsif name == 'Kathryn'
    'coffee, black'
  else
    'perhaps...horchata?'
  end
end

puts favorite_food('Rimmer')
puts favorite_food('Lister')
puts favorite_food('Cher')
puts favorite_drink('Kathryn')
puts favorite_drink('Oprah')
puts favorite_drink('Jean-Luc')

def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer # This is what we return (true or false).
end
puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'DO you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
