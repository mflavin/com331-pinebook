# One Billions Seconds
puts(Time.local(1997, 4, 21, 12, 34) + 10**9)

# Happy Birthday
puts "When were you born? (Use YYYYMMDD Format)"
birth = gets.chomp

year = birth[0..3].to_i
month = birth[4..5].to_i
day = birth[6..7].to_i

b = Time.local(year, month, day)
t = Time.new

age = 1

while Time.local(year + age, month, day) <= t
  puts "SPANK!"
  age = age + 1
end

# Party like it's roman_to_integer 'mcmxcix'
def roman_to_integer roman
  digit_values = {
    "i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "d" => 500,
    "m" => 1000
  }
  total = 0
  prev = 0
  roman.reverse.each_char do |c_or_C|
    c = c_or_C.downcase
    val = digit_values[c]

    if !val
      puts "This is not a valid roman numeral!"
      return
    end
    if val < prev
      val *= -1
    else
      prev = val
    end
    total += val
  end
  total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('MCCML'))

# Birthday Helper
birth_dates = {}
File.read("birthdates.txt").each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' && first_comma < line.length
    first_comma = first_comma + 1
  end
  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end
puts "Whose Birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]
if date == nil
  puts "Ohh, I don't know that one..."
else
  puts date[0..11]
end
