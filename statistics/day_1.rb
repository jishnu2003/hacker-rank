# The total number of elements in arrays X and W.
N = gets.strip.to_i.freeze
# To hold the elements of the array
X = gets.strip.split(' ').map(&:to_i).freeze
# To hold respective weight's of the elements
W = gets.strip.split(' ').map(&:to_i).freeze

sum_weight = W.reduce(:+)
xw = 0 # To calculate sum of product of Xi * Wi

X.each_with_index do |value, index|
  xw += (value * W[index])
end

weighted_mean = xw / sum_weight.to_f

puts weighted_mean.round(1)
