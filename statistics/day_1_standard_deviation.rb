def calculate_mean(input)
  calculate_sum(input) / input.length
end

def calculate_sum(input)
  input.inject(0, :+)
end

def square(input)
  input * input
end

N = gets.strip.to_i.freeze
X = gets.strip.split(' ').map(&:to_i).freeze

mean = calculate_mean(X)

squared_distance = 0

X.each do |value|
  diff = value - mean
  squared_distance += square(diff)
end

standard_deviation = Math.sqrt(squared_distance / N)

puts standard_deviation.round(1)
