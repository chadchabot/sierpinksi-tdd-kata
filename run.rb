require './lib/evolver'
width = 115
state = "0" * (width-1) + "1"

NUM_GENERATIONS = 125
evolver = Evolver.new()
NUM_GENERATIONS.times do
  puts state
  state = evolver.next state
end
puts state
