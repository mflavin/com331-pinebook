# Building and Sorting an array
puts 'Enter as many words as you want.'
words = []

while true
  word = gets.chomp
  if word == ''
    break
  end
  words.push(word)
end

puts 'Sorting:'
puts words.sort

# Table of Content
table = [
  ['Chapter 1:', 'Getting Started', 'page 1'],
  ['Chapter 2:', 'Numbers', 'page 9'],
  ['Chapter 3:', 'Letters', 'page 13']
]
line_width = 20

table.each do |tab|
  puts tab[0].ljust(line_width) + '' + tab[1].ljust(line_width) + '' + tab[2].ljust(line_width)
end
