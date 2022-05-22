# Ciclos
counter = 0
runWhile = true
while counter < 10 and runWhile
  puts "Counter: #{counter}"
  counter += 1
end

x = 1
loop do
  puts "loop do: #{x}"
  x += 1
  break if x > 10
end

for i in 1..10 do
  puts "for: #{i}"
end

mi_courses = %w[Ruby Rails JavaScript]
mi_courses.each { |course| puts course }

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |number|
  if number.even?
    puts "even: #{number}"
  else
    puts "odd: #{number}"
  end
end

4.times { puts 'Hola'}
4.times { |i| puts "Hola #{i}" }