array_size = gets.strip.to_i
elements = []
gets.strip.split(' ').each do |element|
    elements << element.to_i
end

mean_sum = elements.inject(0, :+)
mean = mean_sum / array_size.to_f

puts mean
elements.sort!

middle_index = (array_size / 2) - 1
median = 0
if array_size.even?
    next_index = middle_index + 1
      median = (elements[middle_index] + elements[next_index]) / 2.to_f
else
    median = elements[middle_index]
end

puts median

mode_hash = elements.each_with_object(Hash.new(0)) { |k, hash| hash[k] += 1 }
mode = mode_hash.max_by { |_k, v| v }
puts mode[0]
