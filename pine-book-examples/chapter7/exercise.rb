# #Bottles of beer on the wall Lyrics
beer = 99
while beer > 0
  puts beer.to_s + ' Bottles of Beer on the wall.'
  puts beer.to_s + ' Bottles of Beer.'
  puts 'Take one down, pass it around,'
  beer = beer - 1
  puts beer.to_s + ' Bottles of Beer on the wall!'
  puts
end

#Grandma can't hear
puts 'Say something to Grandma...'
speak = gets.chomp
while speak != speak.upcase
  puts 'HUH?! SPEAK UP, SONNY!'
  speak = gets.chomp
end
puts 'NO, NOT SINCE 1938!'

#Grandma can't hear, Extended
puts 'Say something to Grandma...'
speak = gets.chomp
while true
  if speak != speak.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
    speak = gets.chomp
  elsif speak == 'BYE'
    puts 'WAIT WHAT?'
    speak = gets.chomp
    if speak == 'BYE'
      puts 'ONE MORE TIME, WHAT WAS THAT?'
      speak = gets.chomp
      if speak == 'BYE'
        puts 'OKAY BYE FOR NOW'
        break
      end
    end
  end
end
puts 'NO, NOT SINCE 1938!'

#Leap Years
puts 'Check for Leap Years'
puts 'First enter a starting year'
startYear = gets.chomp
puts 'Next, enter a ending year'
endingYear = gets.chomp
puts

puts 'Leap Years between those two years are:'
while startYear.to_i <= endingYear.to_i
  if (startYear.to_i % 100 == 0)
    if (startYear.to_i % 400 == 0)
      puts startYear
    else
      #Not a Leap Year
    end
  elsif (startYear.to_i % 4 == 0)
    puts startYear
  else
    #Not a leap Year
  end
  startYear = startYear.to_i + 1
end
