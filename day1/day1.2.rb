require 'pry'

def find_repeated_frequecy(file)
  frequencies = []
  calculations = [0]
  current_freq = 0
  found = false

  File.foreach(file) do |x|
    frequencies << x.strip.to_i
  end

  frequencies.cycle do |f|
    current_freq += f
    found = true if calculations.include?(current_freq)
    calculations << current_freq
    break if found
  end

  current_freq
end

p find_repeated_frequecy('frequencies.txt')
