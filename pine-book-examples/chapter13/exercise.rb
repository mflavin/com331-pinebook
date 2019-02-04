# Orange Tree
class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      puts "The orange tree has died..."
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      puts "The orange tree has died..."
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.7
      @orange_count = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        puts "The orange tree is too old, it dies"
      elsif @height > 2
        @orange_count = (@height * 15 - 25).to_i
        puts "This year your tree grew to #{@height}m tall, " +
              "and produced #{@orange_count} oranges."
      else
        puts "This year your tree grew to #{@height}m tall, " +
              "but is still too young to grow fruit."
      end
    else
      puts "A year later, the tree is still dead"
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        puts "You pick a juicy, delicious orange!"
      else
        puts "You search every branch, but find no oranges."
      end
    else
      puts "A dead tree has nothing to pick..."
    end
  end
end
ot = OrangeTree.new
23.times do
  ot.one_year_passes
end
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)

# Interactive Baby Dragon
class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @alseep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

puts "What would you like to name your baby dragon?"
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts "Commands: feed, toss, walk, rock, put_to_bed, exit"
  command = gets.chomp
  if command == "exit"
    exit
  elsif pet.respond_to?(command)
    pet.send command
  else
    puts "Huh? Please type one of the commands."
  end
end
