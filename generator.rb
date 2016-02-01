#!/usr/bin/ruby

# Wrapper
prefix_wrapper = '<select>'
postfix_wrapper = '</select>'
# Inside
prefix_inside = '<option value="'
inside = '"">'
postfix_inside = '</option>'
# Result
result = { }
result[0] = prefix_wrapper
#Empty
nextval = 0

# Determine how many options
puts "Number of sections in the dropdown (1..):"
num_options = gets.chomp

(1..num_options.to_i).each do |i|
  puts "Enter option name for #{i}:"
  option_name = gets.chomp
  puts "Enter option value for #{i}:"
  value_name = gets.chomp

  result[i] = prefix_inside + value_name + inside + option_name + postfix_inside

  nextval = i + 1
end

result[nextval] = postfix_wrapper


result.each do |i|
  print "#{i.last}"
end
