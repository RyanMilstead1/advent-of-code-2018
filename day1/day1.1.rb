def calculate_frequency(file)
  result = 0
  File.foreach(file) do |x|
    result += x.strip.to_i
  end
  result
end

p calculate_frequency('frequencies.txt')
