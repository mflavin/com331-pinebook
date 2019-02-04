# Even Better Profiling
def profile block_description, &block
  profiling_on = false

  if profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end


# Grandfather Clock
def grandfather_clock &block
  hour = (Time.new.hour + 11)%12 + 1
  hour.times(&block)
end

grandfather_clock {puts "DONG!"}

# Program Logger
def log desc, &block
  puts "Beginning '" + desc + "'..."
  result = block.call
  puts "... '" + desc + "' finished, returning: " + result.to_s
end
log "outer block" do
  log "some little block" do
    1 ** 1 + 2 ** 2
  end
end

log "yet another block" do
  "!doof iahT ekil I".reverse
end
"0" == 0

# Better Program Logger
$depth = 0
def log desc, &block
  prefix = " "*$depth
  puts prefix + "Beginning '" + desc + "'..."
  $depth = $depth + 1

  result = block.call

  $depth = $depth - 1
  puts prefix + "...'" + desc + "' finished, returning: " + result.to_s
end
log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lOtS oF lOvE".downcase
    end
    7 * 3 * 2
  end
  log "yet another block" do
    "!doof naidnI evol I".reverse
  end
  "0" == "0"
end
