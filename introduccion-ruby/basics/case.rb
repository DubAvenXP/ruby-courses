value = 5

case value
when 0
  puts 'value is 0'
when 2
  puts 'value is 2'
else
  puts 'value is neither 0 nor 2'
end

case value
when 0..10
  puts 'value is between 0 and 10'
when 11..20
  puts 'value is between 11 and 20'
else
  puts 'incorrect value'
end
